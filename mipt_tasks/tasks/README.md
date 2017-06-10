Репозиторий для заданий по компьютерной графике в МФТИ
======================================================

Чтобы добавить своё задание

* Клонируйте [репозиторий](https://bitbucket.org/AlexBobkov/graphicssamples) с примерами и соберите по инструкции.
* Создайте свой форк [репозитория](https://bitbucket.org/AlexBobkov/studenttasks2017) для заданий.
* Клонируйте свой форк себе на компьютер.
* Перейдите в папку *task1* и создайте там подпапку `<номер группы><фамилия на латинице>` (например, *123Ivanov*) и скопируйте в неё файлы с исходным кодом *.h* и *.cpp*
* Создайте вложенную подпапку `<номер группы><фамилия на латинице>Data` (например, *123IvanovData*) и скопируйте в неё дополнительные файлы: шейдеры, изображения и возможно другие.
* В папке `<номер группы><фамилия на латинице>` создайте файле CMakeLists.txt следующего содержимого

```
set(SRC_FILES
    Main.h
    Main.cpp
)

MAKE_TASK(123Ivanov 1 "${SRC_FILES}")
```
    
Здесь в переменной **SRC_FILES** укажите имена ваших файлов с исходным кодом.
    
В аргументах макроса **MAKE_TASK** укажите имя папки и номер задания (1, 2 или 3).
    
* С помощью CMake сгенерируйте проекты для Visual Studio или Makefiles по аналогии с примерами. При этом в CMake укажите значение переменной **DEPENDENCIES_ROOT** по аналогии с примерами.
* Убедитесь, что примеры запускаются из папки *install*
* Отправьте свои изменения в свой форк.
* На страничке форка создайте Pull-запрос на слияние с основным репозиторием.

    Это экспериментальный пункт. По всем вопросам пишите мне на почту.
    
Доп. опция в **CMAKE**: при конфигурировании проекта укажите в переменной **SELECTED_STUDENT** значение `<номер группы><фамилия на латинице>`. В том случае будет компилироваться только ваше задание.

Задания используют библиотеки:

* GLFW (<http://www.glfw.org/>)
* GLEW (<http://glew.sourceforge.net/>)
* GLM (<http://glm.g-truc.net>)
* Assimp (<http://www.assimp.org/>)
* SOIL (<https://bitbucket.org/SpartanJ/soil2>)
* imgui (<https://github.com/ocornut/imgui>)

Подробная инструкция по сборке на сайте курса: <http://alexander-bobkov.ru/opengl/samples>