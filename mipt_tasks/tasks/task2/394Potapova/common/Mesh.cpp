#include "Mesh.hpp"

#include <assimp/cimport.h>
#include <assimp/scene.h>
#include <assimp/postprocess.h>

#include <iostream>
#include <vector>

void addDiniVerticeAndNormal(std::vector<glm::vec3>& vertices, std::vector<glm::vec3>& normals, 
                             std::vector<glm::vec2>& texcoords0, std::vector<glm::vec2>& texcoords1,
							 float theta, float phi, float a, float b)
{
	double x = a * cos(theta) * sin(phi);
	double y = a * sin(theta) * sin(phi);
	double z = a * (log(tan(phi / 2)) + cos(phi)) + b * theta;

	double nx = - a * a * sin(phi) * sin(phi);
	double ny = - a * (a * sin(2 * phi) * sin(2 * phi) * cos(theta) / (2 * cos(2 * phi) - 2) + b * cos(phi) * sin(theta));
	double nz = a * (a * sin(2 * phi) * sin(2 * phi) * sin(theta) / (2 * cos(2 * phi) - 2) - b * cos(phi) * cos(theta));
	
	vertices.push_back({ x, y, z });
	normals.push_back({ glm::normalize(glm::vec3(nx, ny, nz)) });
    texcoords0.push_back({ theta, phi });
    texcoords1.push_back({ theta, phi });
}

void addDiniVertice(std::vector<glm::vec3>& vertices, float psi, float theta, float phi)
{
	psi = psi * M_PI;

	if (psi > 0.999)
		psi = 0.999;
	else if (psi < 0.001)
		psi = 0.001;
		
	float sinpsi = sin(psi);
	float cospsi = cos(psi);
	float g = (phi - cospsi * theta) / sinpsi;
	float s = exp(g);
	float r = (2 * sinpsi) / (s + 1 / s);
	float t = r * (s - 1 / s) * 0.5;

	
	float x = phi - t;
	float y = r * cos(theta);
	float z = r * sin(theta);

	vertices.push_back({x, y, z});
}

void addDiniNormal(std::vector<glm::vec3>& normals, float theta, float phi)
{
	float r = cos(phi - theta);
	float g = cos(theta);
	float b = sin(theta);
	normals.push_back({r, g, b});
}


MeshPtr makeDiniSurface(float a, float b, float d_theta, float d_phi)
{
	std::vector<glm::vec3> vertices;
	std::vector<glm::vec3> normals;
    std::vector<glm::vec2> texcoords0;
    std::vector<glm::vec2> texcoords1;
	
	for (float theta = 0; theta <= 4 * M_PI; theta += d_theta) 
	{
		for (float phi = 0; phi <= 2; phi += d_phi) 
		{
			addDiniVerticeAndNormal(vertices, normals, texcoords0, texcoords1, theta, phi, a, b);
			addDiniVerticeAndNormal(vertices, normals, texcoords0, texcoords1, theta + d_theta, phi, a, b);
		}
	}

	DataBufferPtr buf0 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
	buf0->setData(vertices.size() * sizeof(float) * 3, vertices.data());

	DataBufferPtr buf1 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
	buf1->setData(normals.size() * sizeof(float) * 3, normals.data());

    DataBufferPtr buf2 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf2->setData(texcoords0.size() * sizeof(float) * 2, texcoords0.data());

    DataBufferPtr buf3 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf3->setData(texcoords1.size() * sizeof(float) * 2, texcoords1.data());


	MeshPtr mesh = std::make_shared<Mesh>();
	mesh->setAttribute(0, 3, GL_FLOAT, GL_FALSE, 0, 0, buf0);
	mesh->setAttribute(1, 3, GL_FLOAT, GL_FALSE, 0, 0, buf1);
    mesh->setAttribute(2, 2, GL_FLOAT, GL_FALSE, 0, 0, buf2);
    mesh->setAttribute(3, 2, GL_FLOAT, GL_FALSE, 0, 0, buf3);

	mesh->setPrimitiveType(GL_TRIANGLE_STRIP);
	mesh->setVertexCount(vertices.size());

	std::cout << "Surface is created with " << vertices.size() << " vertices\n";

	return mesh;
}

MeshPtr makeDiniSurface_v2(float psi, float d_theta, float d_phi)
{
	std::vector<glm::vec3> vertices;
	std::vector<glm::vec3> normals;

	for (float theta = 0; theta <= 2 * M_PI; theta += d_theta) 
	{
		for (float phi = 0; phi <= 2; phi += d_phi) 
		{
	
			addDiniVertice(vertices, psi, theta, phi);
			addDiniVertice(vertices, psi, theta, phi + d_phi);
			addDiniVertice(vertices, psi, theta + d_theta, phi + d_phi);

			addDiniNormal(normals, theta, phi);
			addDiniNormal(normals, theta, phi + d_phi);
			addDiniNormal(normals, theta + d_theta, phi + d_phi);

			//Второй треугольник, образующий квад
			addDiniVertice(vertices, psi, theta, phi);
			addDiniVertice(vertices, psi, theta + d_theta, phi + d_phi);
			addDiniVertice(vertices, psi, theta + d_theta, phi);

			addDiniNormal(normals, theta, phi);
			addDiniNormal(normals, theta + d_theta, phi + d_phi);
			addDiniNormal(normals, theta + d_theta, phi);
		}
	}

	DataBufferPtr buf0 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
	buf0->setData(vertices.size() * sizeof(float) * 3, vertices.data());

	DataBufferPtr buf1 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
	buf1->setData(normals.size() * sizeof(float) * 3, normals.data());

	MeshPtr mesh = std::make_shared<Mesh>();
	mesh->setAttribute(0, 3, GL_FLOAT, GL_FALSE, 0, 0, buf0);
	mesh->setAttribute(1, 3, GL_FLOAT, GL_FALSE, 0, 0, buf1);

	mesh->setPrimitiveType(GL_TRIANGLE_STRIP);
	mesh->setVertexCount(vertices.size());

	std::cout << "Surface is created with " << vertices.size() << " vertices\n";

	return mesh;
}

MeshPtr makeSphere(float radius, unsigned int N)
{
    unsigned int M = N / 2;

    std::vector<glm::vec3> vertices;
    std::vector<glm::vec3> normals;
    std::vector<glm::vec2> texcoords;

    for (unsigned int i = 0; i < M; i++)
    {
        float theta = (float)glm::pi<float>() * i / M;
        float theta1 = (float)glm::pi<float>() * (i + 1) / M;

        for (unsigned int j = 0; j < N; j++)
        {
            float phi = 2.0f * (float)glm::pi<float>() * j / N + (float)glm::pi<float>();
            float phi1 = 2.0f * (float)glm::pi<float>() * (j + 1) / N + (float)glm::pi<float>();

            //Первый треугольник, образующий квад
            vertices.push_back(glm::vec3(cos(phi) * sin(theta) * radius, sin(phi) * sin(theta) * radius, cos(theta) * radius));
            vertices.push_back(glm::vec3(cos(phi1) * sin(theta1) * radius, sin(phi1) * sin(theta1) * radius, cos(theta1) * radius));
            vertices.push_back(glm::vec3(cos(phi1) * sin(theta) * radius, sin(phi1) * sin(theta) * radius, cos(theta) * radius));
            
            normals.push_back(glm::vec3(cos(phi) * sin(theta), sin(phi) * sin(theta), cos(theta)));
            normals.push_back(glm::vec3(cos(phi1) * sin(theta1), sin(phi1) * sin(theta1), cos(theta1)));
            normals.push_back(glm::vec3(cos(phi1) * sin(theta), sin(phi1) * sin(theta), cos(theta)));
            
            texcoords.push_back(glm::vec2((float)j / N, 1.0f - (float)i / M));
            texcoords.push_back(glm::vec2((float)(j + 1) / N, 1.0f - (float)(i + 1) / M));
            texcoords.push_back(glm::vec2((float)(j + 1) / N, 1.0f - (float)i / M));            

            //Второй треугольник, образующий квад
            vertices.push_back(glm::vec3(cos(phi) * sin(theta) * radius, sin(phi) * sin(theta) * radius, cos(theta) * radius));
            vertices.push_back(glm::vec3(cos(phi) * sin(theta1) * radius, sin(phi) * sin(theta1) * radius, cos(theta1) * radius));
            vertices.push_back(glm::vec3(cos(phi1) * sin(theta1) * radius, sin(phi1) * sin(theta1) * radius, cos(theta1) * radius));            

            normals.push_back(glm::vec3(cos(phi) * sin(theta), sin(phi) * sin(theta), cos(theta)));
            normals.push_back(glm::vec3(cos(phi) * sin(theta1), sin(phi) * sin(theta1), cos(theta1)));
            normals.push_back(glm::vec3(cos(phi1) * sin(theta1), sin(phi1) * sin(theta1), cos(theta1)));            

            texcoords.push_back(glm::vec2((float)j / N, 1.0f - (float)i / M));
            texcoords.push_back(glm::vec2((float)j / N, 1.0f - (float)(i + 1) / M));
            texcoords.push_back(glm::vec2((float)(j + 1) / N, 1.0f - (float)(i + 1) / M));            
        }
    }

    //----------------------------------------

    DataBufferPtr buf0 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf0->setData(vertices.size() * sizeof(float) * 3, vertices.data());

    DataBufferPtr buf1 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf1->setData(normals.size() * sizeof(float) * 3, normals.data());

    DataBufferPtr buf2 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf2->setData(texcoords.size() * sizeof(float) * 2, texcoords.data());

    MeshPtr mesh = std::make_shared<Mesh>();
    mesh->setAttribute(0, 3, GL_FLOAT, GL_FALSE, 0, 0, buf0);
    mesh->setAttribute(1, 3, GL_FLOAT, GL_FALSE, 0, 0, buf1);
    mesh->setAttribute(2, 2, GL_FLOAT, GL_FALSE, 0, 0, buf2);
    mesh->setPrimitiveType(GL_TRIANGLES);
    mesh->setVertexCount(vertices.size());

    std::cout << "Sphere is created with " << vertices.size() << " vertices\n";

    return mesh;
}

MeshPtr makeCube(float size)
{
    std::vector<glm::vec3> vertices;
    std::vector<glm::vec3> normals;
    std::vector<glm::vec2> texcoords;

    //front 1
    vertices.push_back(glm::vec3(size, -size, size));
    vertices.push_back(glm::vec3(size, size, -size));
    vertices.push_back(glm::vec3(size, size, size));
    
    normals.push_back(glm::vec3(1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(1.0, 0.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));
    texcoords.push_back(glm::vec2(1.0, 1.0));    

    //front 2
    vertices.push_back(glm::vec3(size, -size, size));
    vertices.push_back(glm::vec3(size, -size, -size));
    vertices.push_back(glm::vec3(size, size, -size));

    normals.push_back(glm::vec3(1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(1.0, 0.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(0.0, 0.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));    

    //left 1
    vertices.push_back(glm::vec3(-size, -size, size));
    vertices.push_back(glm::vec3(size, -size, -size));
    vertices.push_back(glm::vec3(size, -size, size));    

    normals.push_back(glm::vec3(0.0, -1.0, 0.0));
    normals.push_back(glm::vec3(0.0, -1.0, 0.0));
    normals.push_back(glm::vec3(0.0, -1.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));
    texcoords.push_back(glm::vec2(1.0, 1.0));    

    //left 2
    vertices.push_back(glm::vec3(-size, -size, size));
    vertices.push_back(glm::vec3(-size, -size, -size));
    vertices.push_back(glm::vec3(size, -size, -size));    

    normals.push_back(glm::vec3(0.0, -1.0, 0.0));
    normals.push_back(glm::vec3(0.0, -1.0, 0.0));
    normals.push_back(glm::vec3(0.0, -1.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(0.0, 0.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));    

    //top 1
    vertices.push_back(glm::vec3(-size, size, size));
    vertices.push_back(glm::vec3(size, -size, size));
    vertices.push_back(glm::vec3(size, size, size));    

    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));
    texcoords.push_back(glm::vec2(1.0, 1.0));
    
    //top 2
    vertices.push_back(glm::vec3(-size, size, size));
    vertices.push_back(glm::vec3(-size, -size, size));
    vertices.push_back(glm::vec3(size, -size, size));    

    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(0.0, 0.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));    

    //back 1
    vertices.push_back(glm::vec3(-size, -size, size));
    vertices.push_back(glm::vec3(-size, size, size));
    vertices.push_back(glm::vec3(-size, size, -size));    

    normals.push_back(glm::vec3(-1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(-1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(-1.0, 0.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));    

    //back 2
    vertices.push_back(glm::vec3(-size, -size, size));
    vertices.push_back(glm::vec3(-size, size, -size));
    vertices.push_back(glm::vec3(-size, -size, -size));    

    normals.push_back(glm::vec3(-1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(-1.0, 0.0, 0.0));
    normals.push_back(glm::vec3(-1.0, 0.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));
    texcoords.push_back(glm::vec2(0.0, 0.0));    

    //right 1
    vertices.push_back(glm::vec3(-size, size, size));
    vertices.push_back(glm::vec3(size, size, size));
    vertices.push_back(glm::vec3(size, size, -size));    

    normals.push_back(glm::vec3(0.0, 1.0, 0.0));
    normals.push_back(glm::vec3(0.0, 1.0, 0.0));
    normals.push_back(glm::vec3(0.0, 1.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));    

    //right 2
    vertices.push_back(glm::vec3(-size, size, size));
    vertices.push_back(glm::vec3(+size, size, -size));
    vertices.push_back(glm::vec3(-size, size, -size));    

    normals.push_back(glm::vec3(0.0, 1.0, 0.0));
    normals.push_back(glm::vec3(0.0, 1.0, 0.0));
    normals.push_back(glm::vec3(0.0, 1.0, 0.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));
    texcoords.push_back(glm::vec2(0.0, 0.0));    

    //bottom 1
    vertices.push_back(glm::vec3(-size, size, -size));
    vertices.push_back(glm::vec3(size, size, -size));
    vertices.push_back(glm::vec3(size, -size, -size));
    
    normals.push_back(glm::vec3(0.0, 0.0, -1.0));
    normals.push_back(glm::vec3(0.0, 0.0, -1.0));
    normals.push_back(glm::vec3(0.0, 0.0, -1.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));    
    texcoords.push_back(glm::vec2(1.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));

    //bottom 2
    vertices.push_back(glm::vec3(-size, size, -size));
    vertices.push_back(glm::vec3(size, -size, -size));
    vertices.push_back(glm::vec3(-size, -size, -size));    

    normals.push_back(glm::vec3(0.0, 0.0, -1.0));
    normals.push_back(glm::vec3(0.0, 0.0, -1.0));
    normals.push_back(glm::vec3(0.0, 0.0, -1.0));

    texcoords.push_back(glm::vec2(0.0, 1.0));
    texcoords.push_back(glm::vec2(1.0, 0.0));
    texcoords.push_back(glm::vec2(0.0, 0.0));    

    //----------------------------------------

    DataBufferPtr buf0 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf0->setData(vertices.size() * sizeof(float) * 3, vertices.data());

    DataBufferPtr buf1 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf1->setData(normals.size() * sizeof(float) * 3, normals.data());

    DataBufferPtr buf2 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf2->setData(texcoords.size() * sizeof(float) * 2, texcoords.data());

    MeshPtr mesh = std::make_shared<Mesh>();
    mesh->setAttribute(0, 3, GL_FLOAT, GL_FALSE, 0, 0, buf0);
    mesh->setAttribute(1, 3, GL_FLOAT, GL_FALSE, 0, 0, buf1);
    mesh->setAttribute(2, 2, GL_FLOAT, GL_FALSE, 0, 0, buf2);
    mesh->setPrimitiveType(GL_TRIANGLES);
    mesh->setVertexCount(vertices.size());

    std::cout << "Cube is created with " << vertices.size() << " vertices\n";

    return mesh;
}

MeshPtr makeScreenAlignedQuad()
{
    std::vector<glm::vec3> vertices;

    //front 1
    vertices.push_back(glm::vec3(-1.0, 1.0, 0.0));
    vertices.push_back(glm::vec3(1.0, -1.0, 0.0));
    vertices.push_back(glm::vec3(1.0, 1.0, 0.0));    

    //front 2
    vertices.push_back(glm::vec3(-1.0, 1.0, 0.0));
    vertices.push_back(glm::vec3(-1.0, -1.0, 0.0));
    vertices.push_back(glm::vec3(1.0, -1.0, 0.0));    

    //----------------------------------------

    DataBufferPtr buf0 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf0->setData(vertices.size() * sizeof(float) * 3, vertices.data());

    MeshPtr mesh = std::make_shared<Mesh>();
    mesh->setAttribute(0, 3, GL_FLOAT, GL_FALSE, 0, 0, buf0);
    mesh->setPrimitiveType(GL_TRIANGLES);
    mesh->setVertexCount(vertices.size());

    return mesh;
}

MeshPtr makeGroundPlane(float size, float numTiles)
{
    std::vector<glm::vec3> vertices;
    std::vector<glm::vec3> normals;
    std::vector<glm::vec2> texcoords;

    //front 1
    vertices.push_back(glm::vec3(-size, size, 0.0));
    vertices.push_back(glm::vec3(size, -size, 0.0));
    vertices.push_back(glm::vec3(size, size, 0.0));    

    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));

    texcoords.push_back(glm::vec2(-numTiles, numTiles));
    texcoords.push_back(glm::vec2(numTiles, -numTiles));
    texcoords.push_back(glm::vec2(numTiles, numTiles));    

    //front 2
    vertices.push_back(glm::vec3(-size, size, 0.0));
    vertices.push_back(glm::vec3(-size, -size, 0.0));
    vertices.push_back(glm::vec3(size, -size, 0.0));    

    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));
    normals.push_back(glm::vec3(0.0, 0.0, 1.0));

    texcoords.push_back(glm::vec2(-numTiles, numTiles));
    texcoords.push_back(glm::vec2(-numTiles, -numTiles));
    texcoords.push_back(glm::vec2(numTiles, -numTiles));    

    //----------------------------------------

    DataBufferPtr buf0 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf0->setData(vertices.size() * sizeof(float) * 3, vertices.data());

    DataBufferPtr buf1 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf1->setData(normals.size() * sizeof(float) * 3, normals.data());

    DataBufferPtr buf2 = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    buf2->setData(texcoords.size() * sizeof(float) * 2, texcoords.data());

    MeshPtr mesh = std::make_shared<Mesh>();
    mesh->setAttribute(0, 3, GL_FLOAT, GL_FALSE, 0, 0, buf0);
    mesh->setAttribute(1, 3, GL_FLOAT, GL_FALSE, 0, 0, buf1);
    mesh->setAttribute(2, 2, GL_FLOAT, GL_FALSE, 0, 0, buf2);
    mesh->setPrimitiveType(GL_TRIANGLES);
    mesh->setVertexCount(vertices.size());

    return mesh;
}