#!/bin/bash

conan export liba/conanfile.py
conan export libb/conanfile.py
conan export libc/conanfile.py

conan graph info --requires=libc/0.1 --lockfile-out=output.lock --format=json > graph.json
conan graph build-order --requires=libc/0.1 --lockfile=output.lock --order-by=configuration --format=json --build=missing > build_order.json
conan install --require=libb/0.1 --build=libb/0.1 --lockfile-overrides="{'zlib/1.2.12': ['zlib/1.2.13']}" --lockfile=output.lock

