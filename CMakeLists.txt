cmake_minimum_required(VERSION 3.0.0)
project(Extra2 VERSION 0.1.0)

include(CTest)
enable_testing()

aux_source_directory(. DIR_SRCS)
# aux_source_directory(./compression DIR_SRCS)
# aux_source_directory(./compression/fake-deflate DIR_SRCS)
# aux_source_directory(./compression/lz77 DIR_SRCS)
# aux_source_directory(./compression/Huffman DIR_SRCS)
# aux_source_directory(./compression/debug DIR_SRCS)
# aux_source_directory(./compression/file_io DIR_SRCS)

add_executable(Extra2 ${DIR_SRCS})
