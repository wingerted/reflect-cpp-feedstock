cmake_minimum_required(VERSION 3.23)
project(reflectcpp_consumer LANGUAGES CXX)

find_package(reflectcpp CONFIG REQUIRED)
add_executable(roundtrip roundtrip.cpp)
target_link_libraries(roundtrip PRIVATE reflectcpp::reflectcpp)
target_compile_features(roundtrip PRIVATE cxx_std_20)
