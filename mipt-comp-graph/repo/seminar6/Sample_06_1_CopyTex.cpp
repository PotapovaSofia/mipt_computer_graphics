#include <Application.hpp>
#include <LightInfo.hpp>
#include <Mesh.hpp>
#include <ShaderProgram.hpp>
#include <Texture.hpp>

#include <iostream>
#include <sstream>
#include <vector>

/**
Пример с копированием буфера глубины в текстуру
*/
class SampleApplication : public Application
{
public:
    MeshPtr _cube;
    MeshPtr _sphere;
    MeshPtr _bunny;
    MeshPtr _ground;

    MeshPtr _quad;

    MeshPtr _marker; //Меш - маркер для источника света

    //Идентификатор шейдерной программы
    ShaderProgramPtr _commonShader;
    ShaderProgramPtr _markerShader;
    ShaderProgramPtr _quadShader;

    //Переменные для управления положением одного источника света
    float _lr = 10.0f;
    float _phi = 2.65f;
    float _theta = 0.48f;

    LightInfo _light;

    TexturePtr _brickTex;
    GLuint _depthTexId;

    GLuint _sampler;

    bool _showDebugQuad = true;

    void makeScene() override
    {
        Application::makeScene();

        //=========================================================
        //Создание и загрузка мешей		

        _cube = makeCube(0.5f);
        _cube->setModelMatrix(glm::translate(glm::mat4(1.0f), glm::vec3(0.0f, -1.0f, 0.5f)));

        _sphere = makeSphere(0.5f);
        _sphere->setModelMatrix(glm::translate(glm::mat4(1.0f), glm::vec3(0.0f, 0.0f, 0.5f)));

        _bunny = loadFromFile("models/bunny.obj");
        _bunny->setModelMatrix(glm::translate(glm::mat4(1.0f), glm::vec3(0.0f, 1.0f, 0.0f)));

        _ground = makeGroundPlane(5.0f, 2.0f);

        _marker = makeSphere(0.1f);

        _quad = makeScreenAlignedQuad();

        //=========================================================
        //Инициализация шейдеров

        _commonShader = std::make_shared<ShaderProgram>("shaders/common.vert", "shaders/common.frag");
        _markerShader = std::make_shared<ShaderProgram>("shaders/marker.vert", "shaders/marker.frag");
        _quadShader = std::make_shared<ShaderProgram>("shaders/quadDepth.vert", "shaders/quadDepth.frag");

        //=========================================================
        //Инициализация значений переменных освщения
        _light.position = glm::vec3(glm::cos(_phi) * glm::cos(_theta), glm::sin(_phi) * glm::cos(_theta), glm::sin(_theta)) * _lr;
        _light.ambient = glm::vec3(0.2, 0.2, 0.2);
        _light.diffuse = glm::vec3(0.8, 0.8, 0.8);
        _light.specular = glm::vec3(1.0, 1.0, 1.0);

        //=========================================================
        //Загрузка и создание текстур
        _brickTex = loadTexture("images/brick.jpg");

        //Создаем текстуру, куда будем впоследствии копировать буфер глубины
        glGenTextures(1, &_depthTexId);
        glBindTexture(GL_TEXTURE_2D, _depthTexId);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH_COMPONENT, 512, 512, 0, GL_DEPTH_COMPONENT, GL_UNSIGNED_INT, 0);

        //=========================================================
        //Инициализация сэмплера, объекта, который хранит параметры чтения из текстуры
        glGenSamplers(1, &_sampler);
        glSamplerParameteri(_sampler, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glSamplerParameteri(_sampler, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glSamplerParameteri(_sampler, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glSamplerParameteri(_sampler, GL_TEXTURE_WRAP_T, GL_REPEAT);
    }

    void updateGUI() override
    {
        Application::updateGUI();

        ImGui::SetNextWindowPos(ImVec2(0, 0), ImGuiSetCond_FirstUseEver);
        if (ImGui::Begin("MIPT OpenGL Sample", NULL, ImGuiWindowFlags_AlwaysAutoResize))
        {
            ImGui::Text("FPS %.1f", ImGui::GetIO().Framerate);

            if (ImGui::CollapsingHeader("Light"))
            {
                ImGui::ColorEdit3("ambient", glm::value_ptr(_light.ambient));
                ImGui::ColorEdit3("diffuse", glm::value_ptr(_light.diffuse));
                ImGui::ColorEdit3("specular", glm::value_ptr(_light.specular));

                ImGui::SliderFloat("radius", &_lr, 0.1f, 10.0f);
                ImGui::SliderFloat("phi", &_phi, 0.0f, 2.0f * glm::pi<float>());
                ImGui::SliderFloat("theta", &_theta, 0.0f, glm::pi<float>());
            }

            ImGui::Checkbox("Show depth quad", &_showDebugQuad);
        }
        ImGui::End();
    }

    void draw() override
    {
        //Получаем текущие размеры экрана и выставлям вьюпорт
        int width, height;
        glfwGetFramebufferSize(_window, &width, &height);

        //Resize depth texture
        glBindTexture(GL_TEXTURE_2D, _depthTexId);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH_COMPONENT, width, height, 0, GL_DEPTH_COMPONENT, GL_UNSIGNED_INT, 0);

        glViewport(0, 0, width, height);

        //Очищаем буферы цвета и глубины от результатов рендеринга предыдущего кадра
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

        //====== РИСУЕМ ОСНОВНЫЕ ОБЪЕКТЫ СЦЕНЫ ======
        _commonShader->use();

        //Загружаем на видеокарту значения юниформ-переменных
        _commonShader->setMat4Uniform("viewMatrix", _camera.viewMatrix);
        _commonShader->setMat4Uniform("projectionMatrix", _camera.projMatrix);

        _light.position = glm::vec3(glm::cos(_phi) * glm::cos(_theta), glm::sin(_phi) * glm::cos(_theta), glm::sin(_theta)) * _lr;
        glm::vec3 lightPosCamSpace = glm::vec3(_camera.viewMatrix * glm::vec4(_light.position, 1.0));

        _commonShader->setVec3Uniform("light.pos", lightPosCamSpace); //копируем положение уже в системе виртуальной камеры
        _commonShader->setVec3Uniform("light.La", _light.ambient);
        _commonShader->setVec3Uniform("light.Ld", _light.diffuse);
        _commonShader->setVec3Uniform("light.Ls", _light.specular);

        glActiveTexture(GL_TEXTURE0);  //текстурный юнит 0        
        glBindSampler(0, _sampler);
        _brickTex->bind();
        _commonShader->setIntUniform("diffuseTex", 0);

        //Загружаем на видеокарту матрицы модели мешей и запускаем отрисовку
        {
            _commonShader->setMat4Uniform("modelMatrix", _cube->modelMatrix());
            _commonShader->setMat3Uniform("normalToCameraMatrix", glm::transpose(glm::inverse(glm::mat3(_camera.viewMatrix * _cube->modelMatrix()))));

            _cube->draw();
        }

        {
            _commonShader->setMat4Uniform("modelMatrix", _sphere->modelMatrix());
            _commonShader->setMat3Uniform("normalToCameraMatrix", glm::transpose(glm::inverse(glm::mat3(_camera.viewMatrix * _sphere->modelMatrix()))));

            _sphere->draw();
        }

        {
            _commonShader->setMat4Uniform("modelMatrix", _bunny->modelMatrix());
            _commonShader->setMat3Uniform("normalToCameraMatrix", glm::transpose(glm::inverse(glm::mat3(_camera.viewMatrix * _bunny->modelMatrix()))));

            _bunny->draw();
        }

        {
            _commonShader->setMat4Uniform("modelMatrix", _ground->modelMatrix());
            _commonShader->setMat3Uniform("normalToCameraMatrix", glm::transpose(glm::inverse(glm::mat3(_camera.viewMatrix * _ground->modelMatrix()))));

            _ground->draw();
        }

        //Рисуем маркеры для всех источников света		
        {
            _markerShader->use();

            _markerShader->setMat4Uniform("mvpMatrix", _camera.projMatrix * _camera.viewMatrix * glm::translate(glm::mat4(1.0f), _light.position));
            _markerShader->setVec4Uniform("color", glm::vec4(_light.diffuse, 1.0f));
            _marker->draw();
        }

        //Копируем буфер глубины в текстуру и выводим в прямоугольник на экране
        if (_showDebugQuad)
        {
            glBindTexture(GL_TEXTURE_2D, _depthTexId);
            glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_DEPTH_COMPONENT, 0, 0, width, height, 0);

            _quadShader->use();

            glActiveTexture(GL_TEXTURE0);  //текстурный юнит 0
            glBindTexture(GL_TEXTURE_2D, _depthTexId);
            glBindSampler(0, _sampler);
            _quadShader->setIntUniform("tex", 0);

            glViewport(0, 0, 500, 500);

            _quad->draw();
        }

        //Отсоединяем сэмплер и шейдерную программу
        glBindSampler(0, 0);
        glUseProgram(0);
    }
};

int main()
{
    SampleApplication app;
    app.start();

    return 0;
}