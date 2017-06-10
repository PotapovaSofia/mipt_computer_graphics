set(SRC_FILES
        common/Application.cpp
        common/Camera.cpp
        common/Mesh.cpp
        common/ShaderProgram.cpp
        common/Texture.cpp
        common/Application.hpp
        common/LightInfo.hpp
        common/Camera.hpp
        common/Mesh.hpp
        common/ShaderProgram.hpp
        common/Texture.hpp
        Main.cpp
        )


MAKE_TASK(394Potapova 2 "${SRC_FILES}")

target_include_directories(394Potapova2 PUBLIC
        common)