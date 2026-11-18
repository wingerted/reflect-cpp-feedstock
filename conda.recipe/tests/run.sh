#!/usr/bin/env bash
set -eu

test ! -d "$PREFIX/include/rfl/thirdparty"
build_dir=$(mktemp -d)
trap 'rm -rf "$build_dir"' EXIT

cmake -S "$(dirname "$0")" -B "$build_dir" -G Ninja -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_PREFIX_PATH="$PREFIX"
cmake --build "$build_dir"
"$build_dir/roundtrip"
