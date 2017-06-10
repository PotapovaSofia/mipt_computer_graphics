#include <Application.hpp>
#include <cmath>
#include <Mesh.hpp>
#include <ShaderProgram.hpp>
#include <iostream>
#include <algorithm>


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

	void makeScene() override
	{
		Application::makeScene();

		//Включает сглаживание точек
		glEnable(GL_POINT_SMOOTH);
		//Включает изменение размера точек через шейдер
		glEnable(GL_VERTEX_PROGRAM_POINT_SIZE);

		// _cameraMover = std::make_shared<FreeCameraMover>();

		_surface = makeDiniSurface(a, b, d_theta, d_phi);
		// _surface = makeDiniSurface_v2(0.7, _d_theta, _d_phi);

		_shader = std::make_shared<ShaderProgram>();
		_shader->createProgram("./394PotapovaData/shaderNormal.vert", "./394PotapovaData/shader.frag");

	}

	void update() override
    {
        Application::update();
    }

	void draw() override
	{
		Application::draw();

		int width, height;
        glfwGetFramebufferSize(_window, &width, &height);

        glViewport(0, 0, width, height);


		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

		//Устанавливаем шейдер
		_shader->use();

		//Устанавливаем общие юниформ-переменные
		_shader->setMat4Uniform("viewMatrix", _camera.viewMatrix);
		_shader->setMat4Uniform("projectionMatrix", _camera.projMatrix);

		//Рисуем меш
		_shader->setMat4Uniform("modelMatrix", _surface->modelMatrix());
		_surface->draw();

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