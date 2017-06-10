/**
Использование текстуры в качестве коэффициента отражения света
*/

#version 330
#define M_PI 3.1415926535897932384626433832795

uniform sampler2D diffuseTex0;
uniform sampler2D diffuseTex1;

uniform float time_threshold;

struct LightInfo
{
    vec3 dir; //положение источника света в системе координат ВИРТУАЛЬНОЙ КАМЕРЫ!
    vec3 La; //цвет и интенсивность окружающего света
    vec3 Ld; //цвет и интенсивность диффузного света
    vec3 Ls; //цвет и интенсивность бликового света
};
uniform LightInfo light;

in vec3 normalCamSpace; //нормаль в системе координат камеры (интерполирована между вершинами треугольника)
in vec4 posCamSpace; //координаты вершины в системе координат камеры (интерполированы между вершинами треугольника)
in vec2 texCoord0; //текстурные координаты (интерполирована между вершинами треугольника)
in vec2 texCoord1; //текстурные координаты (интерполирована между вершинами треугольника)

out vec4 fragColor; //выходной цвет фрагмента

const vec3 Ks = vec3(1.0, 1.0, 1.0); //Коэффициент бликового отражения
const float shininess = 128.0;

void main()
{
    vec3 diffuseColor;

    if (texCoord0.y + 0.01 * sin(texCoord0.x) > time_threshold) {
        diffuseColor = texture(diffuseTex0, texCoord0).rgb;
    } else {
        diffuseColor = texture(diffuseTex1, texCoord1).rgb;
    }

    vec3 normal = normalize(normalCamSpace); //нормализуем нормаль после интерполяции
    vec3 viewDirection = normalize(-posCamSpace.xyz); //направление на виртуальную камеру (она находится в точке (0.0, 0.0, 0.0))
    
    vec3 lightDirCamSpace = normalize(light.dir - posCamSpace.xyz); //направление на источник света 

    float NdotL = max(dot(normal, lightDirCamSpace.xyz), 0.0); //скалярное произведение (косинус)

    vec3 color = diffuseColor * (light.La + light.Ld * NdotL);

    if (NdotL > 0.0)
    {           
        vec3 halfVector = normalize(lightDirCamSpace.xyz + viewDirection); //биссектриса между направлениями на камеру и на источник света

        float blinnTerm = max(dot(normal, halfVector), 0.0); //интенсивность бликового освещения по Блинну              
        blinnTerm = pow(blinnTerm, shininess); //регулируем размер блика
        color += light.Ls * Ks * blinnTerm;
    }

    fragColor = vec4(color, 1.0);
}
