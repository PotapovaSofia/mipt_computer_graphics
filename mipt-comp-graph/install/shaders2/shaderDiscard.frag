/*
Получает на вход интеполированный цвет фрагмента и копирует его на выход.
Отбрасывает фрагмент по условию.
*/

#version 330

in vec4 color;

out vec4 fragColor;

void main()
{
    fragColor = color;

    if (color.r > 0.5) //Если интенсивность красного больше 0.5 отбрасываем фрагмент.
    {
        discard;
    }
}
