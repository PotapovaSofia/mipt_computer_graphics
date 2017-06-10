#include <Application.hpp>
#include <cmath>
#include <Mesh.hpp>
#include <ShaderProgram.hpp>
#include <LightInfo.hpp>
#include <Texture.hpp>
#include <iostream>
#include <algorithm>
#include <vector>

class SampleApplication : public Application
{
private:
	float a = 5.0;
	float b = 1.0;
	float d_theta = 0.05;
	float d_phi = 0.1;
	
public:
	MeshPtr _surface;
	ShaderProgramPtr _shader;
	LightInfo _light;
	
	GLuint _sampler0, _sampler1;

	TexturePtr _marbleTexture, _stoneTexture;

	//Координаты источника света
    float _phi = 0.0;
    float _theta = glm::pi<float>() * 0.25f;


	void makeScene() override
	{
		Application::makeScene();

		_surface = makeDiniSurface(a, b, d_theta, d_phi);

		_shader = std::make_shared<ShaderProgram>("./394PotapovaData/texture.vert", "./394PotapovaData/texture.frag");


		//=========================================================
        //Инициализация значений переменных освщения
        _light.ambient = glm::vec3(0.2f);
        _light.diffuse = glm::vec3(0.8f);
        _light.specular = glm::vec3(1.0f);


        //=========================================================
        //Загрузка и создание текстур
        _marbleTexture = loadTexture("./394PotapovaData/beton.jpeg");
        _stoneTexture = loadTexture("./394PotapovaData/marble.jpeg");

        //=========================================================
        //Инициализация сэмплера, объекта, который хранит параметры чтения из текстуры
        glGenSamplers(1, &_sampler0);
        glSamplerParameteri(_sampler0, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glSamplerParameteri(_sampler0, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glSamplerParameteri(_sampler0, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glSamplerParameteri(_sampler0, GL_TEXTURE_WRAP_T, GL_REPEAT);

        glGenSamplers(1, &_sampler1);
        glSamplerParameteri(_sampler1, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glSamplerParameteri(_sampler1, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glSamplerParameteri(_sampler1, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glSamplerParameteri(_sampler1, GL_TEXTURE_WRAP_T, GL_REPEAT);

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

                ImGui::SliderFloat("phi", &_phi, 0.0f, 2.0f * glm::pi<float>());
                ImGui::SliderFloat("theta", &_theta, 0.0f, glm::pi<float>());
            }

        }
        ImGui::End();
    }

	void draw() override
	{

		int width, height;
        glfwGetFramebufferSize(_window, &width, &height);

        glViewport(0, 0, width, height);


		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		//Устанавливаем шейдер
		_shader->use();

		//Устанавливаем общие юниформ-переменные
		_shader->setMat4Uniform("viewMatrix", _camera.viewMatrix);
		_shader->setMat4Uniform("projectionMatrix", _camera.projMatrix);
		
		glm::vec3 lightDir = glm::vec3(glm::cos(_phi) * glm::cos(_theta), glm::sin(_phi) * glm::cos(_theta), glm::sin(_theta));
        _shader->setVec3Uniform("light.dir", lightDir);
        _shader->setVec3Uniform("light.La", _light.ambient);
        _shader->setVec3Uniform("light.Ld", _light.diffuse);
        _shader->setVec3Uniform("light.Ls", _light.specular);

        float time = glfwGetTime();
        float time_threshold = 1.0 - (sin(time) + 1.0) / 2.0;
        _shader->setFloatUniform("time_threshold", time_threshold);

        glActiveTexture(GL_TEXTURE0);  //текстурный юнит 0
        glBindSampler(0, _sampler0);
        _marbleTexture->bind();
        glActiveTexture(GL_TEXTURE1);  //текстурный юнит 1
        glBindSampler(1, _sampler1);
        _stoneTexture->bind();
        _shader->setIntUniform("diffuseTex0", 0);
        _shader->setIntUniform("diffuseTex1", 1);

		//Рисуем меш
		_shader->setMat4Uniform("modelMatrix", _surface->modelMatrix());
		_shader->setMat3Uniform("normalToCameraMatrix", glm::transpose(glm::inverse(glm::mat3(_camera.viewMatrix * _surface->modelMatrix()))));
		
		_surface->draw();

		//Отсоединяем сэмплер и шейдерную программу
        glBindSampler(0, 0);
        glUseProgram(0);

	}

	void handleKey(int key, int scancode, int action, int mods) override
	{
		Application::handleKey(key, scancode, action, mods);

		if (action == GLFW_PRESS) {
			if (key == GLFW_KEY_MINUS) {
				d_theta += d_theta / 2;
				_surface = makeDiniSurface(a, b, d_theta, d_phi);
			}
			if (key == GLFW_KEY_EQUAL) {
				d_theta -= d_theta / 2;
				_surface = makeDiniSurface(a, b, d_theta, d_phi);
			}
		}
	}
};


int main()
{
	SampleApplication app;
	app.start();
	return 0;
}