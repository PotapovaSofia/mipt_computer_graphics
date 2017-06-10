macro(FIND_DEPENDENCIES)
    option(USE_AUDO_DEPENDENCIES "Enable to use auto built dependencies" ON)
    set(DEPENDENCIES_ROOT CACHE PATH "Dependencies install path")
    if(USE_AUDO_DEPENDENCIES)
        if(DEPENDENCIES_ROOT)
            set(CMAKE_PREFIX_PATH ${DEPENDENCIES_ROOT})
            find_package(glew CONFIG)
            find_package(glfw3 CONFIG)
            find_package(glm CONFIG)
            find_package(assimp)
            find_package(soil CONFIG)
            find_package(imgui CONFIG)
        else()
            message("DEPENDENCIES_ROOT is not set")
        endif()
    else()
        find_package(glew CONFIG)
        find_package(glfw3 CONFIG)
        find_package(glm CONFIG)
        find_package(assimp)
        find_package(soil CONFIG)
        find_package(imgui CONFIG)
    endif()
endmacro(FIND_DEPENDENCIES)

macro(COPY_DEPENDENCIES DIRNAME)
    get_property(GLFW_LOCATION_DEBUG TARGET glfw PROPERTY IMPORTED_LOCATION_DEBUG)
    if(GLFW_LOCATION_DEBUG)
        install(FILES ${GLFW_LOCATION_DEBUG} DESTINATION ${CMAKE_INSTALL_PREFIX}/${DIRNAME})
    else()
        message("GLFW_LOCATION_DEBUG is empty")
    endif()

    get_property(GLFW_LOCATION_RELEASE TARGET glfw PROPERTY IMPORTED_LOCATION_RELEASE)
    if(GLFW_LOCATION_RELEASE)
        install(FILES ${GLFW_LOCATION_RELEASE} DESTINATION ${CMAKE_INSTALL_PREFIX}/${DIRNAME})
    else()
        message("GLFW_LOCATION_RELEASE is empty")
    endif()

    install(FILES ${DEPENDENCIES_ROOT}/bin/assimp-${ASSIMP_MSVC_VERSION}-mtd.dll DESTINATION ${CMAKE_INSTALL_PREFIX}/${DIRNAME})
    install(FILES ${DEPENDENCIES_ROOT}/bin/assimp-${ASSIMP_MSVC_VERSION}-mt.dll DESTINATION ${CMAKE_INSTALL_PREFIX}/${DIRNAME})
endmacro(COPY_DEPENDENCIES)

macro(ADD_TASKS DIRNAME)
    file(GLOB STUDENTS ${DIRNAME}/*)
    foreach(STUDENT ${STUDENTS})
        if(IS_DIRECTORY ${STUDENT})
            message("Student task found " ${STUDENT})
            if(SELECTED_STUDENT)
                get_filename_component(STUDENT_NAME ${STUDENT} NAME)
                if(${SELECTED_STUDENT} STREQUAL ${STUDENT_NAME})
                    message("Add to build " ${STUDENT})
                    add_subdirectory("${STUDENT}")
                endif()
            else()
                add_subdirectory("${STUDENT}")
            endif()
        endif()
    endforeach()
endmacro(ADD_TASKS DIRNAME)

macro(MAKE_TASK TRGTNAME TASKNUM SOURCEFILES)
    add_executable(${TRGTNAME}${TASKNUM} ${SOURCEFILES})

    target_include_directories(${TRGTNAME}${TASKNUM} PUBLIC
        ${ASSIMP_INCLUDE_DIR}
    )

    target_link_libraries(${TRGTNAME}${TASKNUM}
        GLEW::glew_s
        glm
        glfw
        SOIL::soil
        IMGUI::imgui
        ${ASSIMP_LIBRARY}
    )

    if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
        target_compile_options(${TRGTNAME}${TASKNUM} PRIVATE -std=c++11)
        target_link_libraries(${TRGTNAME}${TASKNUM} "-framework CoreFoundation")
    endif()

    if(CMAKE_COMPILER_IS_GNUCC)
        target_compile_options(${TRGTNAME}${TASKNUM} PUBLIC -std=c++11)
    endif()

    if(USE_CORE_PROFILE)
        target_compile_definitions(${TRGTNAME}${TASKNUM} PRIVATE USE_CORE_PROFILE)
    endif(USE_CORE_PROFILE)

    install(TARGETS ${TRGTNAME}${TASKNUM} RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/task${TASKNUM})
    
    if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${TRGTNAME}Data)
        install(DIRECTORY ${TRGTNAME}Data DESTINATION ${CMAKE_INSTALL_PREFIX}/task${TASKNUM})
        
        add_custom_command(OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${TRGTNAME}Data
            COMMAND ${CMAKE_COMMAND} -E copy_directory
            ${CMAKE_CURRENT_SOURCE_DIR}/${TRGTNAME}Data ${CMAKE_CURRENT_BINARY_DIR}/${TRGTNAME}Data
            DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/${TRGTNAME}Data)

        add_custom_target(${TRGTNAME}${TASKNUM}_Data ALL
            DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${TRGTNAME}Data)

        add_dependencies(${TRGTNAME}${TASKNUM} ${TRGTNAME}${TASKNUM}_Data)
    else()
        message("Folder not found " ${TRGTNAME}Data)
    endif()
endmacro(MAKE_TASK TRGTNAME SOURCEFILES)