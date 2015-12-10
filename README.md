# hugo-docker

Hugo in an [alpine:3.2](https://hub.docker.com/r/library/alpine/) Docker container.

The `hugo` binary lives in `/bin/hugo` and the default `CMD` is set to Hugo, so to generate a site (with verbose logging turned on), run like this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/arschles/hugo -v
```

To serve, watching files, run like this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/arschles/hugo server -w
```
