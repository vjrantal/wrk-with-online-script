# Installation

```
docker pull vjrantal/wrk-with-online-script
```

# Usage

Arguments to `wrk` are passed as environment variables. The mandatory one is `TARGET_URL`, for example:

```
docker run -e TARGET_URL=https://google.com vjrantal/wrk-with-online-script
```

Below an example of how to read the variables from a file:

```
docker run --env-file ./env.list vjrantal/wrk-with-online-script
```

Please see the [Dockerfile](Dockerfile) for other possible environment variables.