# Install script for directory: C:/Users/Sawyer/source/repos/FaberFramework/sources/framework

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/FaberFramework")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files/LLVM/bin/llvm-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/src/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/framework-listener/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/input/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/logger/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/macros/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/renderer/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/system/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/timer/cmake_install.cmake")
  include("C:/Users/Sawyer/source/repos/FaberFramework/builds/sources/framework/window/cmake_install.cmake")

endif()
