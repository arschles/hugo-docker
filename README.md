# hugo-docker

[![Docker Repository on Quay](https://quay.io/repository/arschles/hugo/status "Docker Repository on Quay")](https://quay.io/repository/arschles/hugo)

Hugo in an [alpine:3.2](https://hub.docker.com/r/library/alpine/) Docker container.

The `hugo` binary lives in `/bin/hugo` and the default `CMD` is set to Hugo, so to generate a site, run this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/arschles/hugo
```

I recommend generating with verbose mode on, so to do that run this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/arschles/hugo hugo -v
```


To serve, watching files, run like this:

```console
docker run --rm -v $PWD:/pwd -w /pwd quay.io/arschles/hugo hugo server -w
```
