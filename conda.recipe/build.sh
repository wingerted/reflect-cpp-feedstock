#!/bin/bash
set -e
set -x


# 显式指定使用 conda 环境中的 clang 和 clang++（此步可作为保险，同时 PATH 也已修改）
export CC="$BUILD_PREFIX/bin/clang"
export CXX="$BUILD_PREFIX/bin/clang++"

mkdir -p build && cd build

cmake ${CMAKE_ARGS} -GNinja \
    -DCMAKE_PREFIX_PATH="$PREFIX" \
    -DCMAKE_INSTALL_PREFIX="$PREFIX" \
    -DCMAKE_CXX_FLAGS="${CMAKE_CXX_FLAGS} -fpic" \
    -DREFLECTCPP_USE_BUNDLED_DEPENDENCIES=OFF \
    -DREFLECTCPP_USE_VCPKG_DEFAULT=OFF \
    -DREFLECTCPP_USE_VCPKG=OFF \
    -DREFLECTCPP_FLEXBUFFERS=ON \
    -DREFLECTCPP_MSGPACK=ON \
    -DREFLECTCPP_XML=ON \
    -DREFLECTCPP_TOML=ON \
    -DREFLECTCPP_YAML=ON \
    -DREFLECTCPP_CSV=ON \
    -DREFLECTCPP_PARQUET=ON \
    "$SRC_DIR"

ninja

# The `install` command will take care of copying the files to the right place
ninja install
