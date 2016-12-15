# Docker: qorbani/jq

Smallest container for running [jq v1.5](https://stedolan.github.io/jq/) with about 1MB compressed image size.

# How to run it

```bash
echo '{"test":true}' | docker run -i --rm qorbani/jq jq ".test"
```

# How to build it

```bash
# To build
make clean build

# To Test
make test

# To push
make push
```