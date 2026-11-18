# reflect-cpp-feedstock

This is the feedstock for the [reflect-cpp](https://github.com/munich-data-engineering/reflect-cpp) package.

## About reflect-cpp

reflect-cpp is a modern C++ reflection library that provides runtime reflection capabilities for C++ applications. It supports serialization/deserialization to various formats including JSON, YAML, TOML, XML, MessagePack, and FlatBuffers.

## Building from source

Install the workspace dependencies with Pixi, then build and test reflect-cpp.

```bash
pixi install --locked
pixi run build
pixi run test
```

## Dependencies

Pixi installs CTRE from conda-forge, yyjson from the scns channel, and enchantum from cxxlibs. The build writes the reflect-cpp package to `output/linux-64/`. Use the same three channels when installing the binary package.

- ctre >=3.10.0,<4
- enchantum >=0.5.0,<0.6
- yyjson >=0.12.0,<0.13
- msgpack-c >=6.1.0,<7
- flatbuffers >=25.1.21,<26
- libbson >=1.23.2,<2
- pugixml >=1.15,<2
- yaml-cpp >=0.8.0,<0.9
- tomlplusplus >=3.4.0,<4
- pyarrow >=24.0.0,<25

## License

This feedstock is licensed under the MIT License, as is the original reflect-cpp package.
