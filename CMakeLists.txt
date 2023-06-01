cmake_minimum_required(VERSION 3.0.0)
project(main VERSION 0.1.0)

include(CTest)
enable_testing()

aux_source_directory(./src DIR_SRCS)
aux_source_directory(./src/login DIR_SRCS)
aux_source_directory(./src/menu DIR_SRCS)
aux_source_directory(./src/appointment DIR_SRCS)

add_executable(main ${DIR_SRCS})

target_compile_options(main PRIVATE -Wall -Werror -ansi)