# reflect-cpp-feedstock

This is the feedstock for the [reflect-cpp](https://github.com/getml/reflect-cpp) package.

## About reflect-cpp

reflect-cpp is a modern C++ reflection library that provides runtime reflection capabilities for C++ applications. It supports serialization/deserialization to various formats including JSON, YAML, TOML, XML, MessagePack, and FlatBuffers.

## Building from source

To build this package from source:

```bash
conda build conda.recipe
```

## Dependencies

This package has the following runtime dependencies:
- ctre >=3.9.0,<4
- msgpack-c >=6.1.0,<7
- flatbuffers >=25.1.21,<26
- libbson >=1.23.2,<2
- pugixml >=1.15,<2
- yaml-cpp >=0.8.0,<0.9
- yyjson >=0.10.0,<0.11
- toml11 >=4.4.0,<5

## License

This feedstock is licensed under the MIT License, as is the original reflect-cpp package.
