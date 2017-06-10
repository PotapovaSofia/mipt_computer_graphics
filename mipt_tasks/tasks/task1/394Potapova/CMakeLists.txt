set(SRC_FILES
        common/Application.cpp
        common/Camera.cpp
        common/Mesh.cpp
        common/ShaderProgram.cpp
        common/Application.hpp
        common/Camera.hpp
        common/Mesh.hpp
        common/ShaderProgram.hpp
        main.cpp
        )


MAKE_TASK(394Potapova 1 "${SRC_FILES}")

target_include_directories(394Potapova1 PUBLIC
        common)