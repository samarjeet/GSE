cmake_minimum_required(VERSION 3.2)


# it's all about target and properties
# Targets model the components of you application. 
# An executable is a target, a library is a target. 
# Your application is built as a collection of targets that depend on and use each other.

# Targets have properties. 
# Properties of a target are the source files it’s built from, the compiler options it requires, the libraries it links against. 
# In modern CMake you create a list of targets and define the necessary properties on them.

project(GSE VERSION 0.1.0)

add_library(GSE)


