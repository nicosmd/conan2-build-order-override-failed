# Conan2 build order override failed demo

run

```bash
./build.sh
```

to reproduce the error.

The output should be something like:

```bash
ERROR: Version conflict: Conflict between zlib/1.2.12 and zlib/1.2.13 in the graph.
Conflict originates from libb/0.1

Run conan graph info with your recipe and add --format=html to inspect the graph errors in an easier to visualize way
```
