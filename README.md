# python-boost-build-container

This is just a basic build container with python and boost. It gets pushed to [aidandj/pyboost_build_container](https://hub.docker.com/repository/docker/aidandj/pyboost_build_container) manually now. Maybe I'll do CD in the future

## Instructions to build/push

1. `docker build -t aidandj/pyboost_build_container:latest .`
2. `docker push aidandj/pyboost_build_container:latest`

## Included tools

* `Python 3.7`
* [Boost.Python](https://www.boost.org/doc/libs/1_72_0/libs/python/doc/html/index.html)
* [Boost.Serialization](https://www.boost.org/doc/libs/1_72_0/libs/serialization/doc/index.html)