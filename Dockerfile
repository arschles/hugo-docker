FROM alpine:3.1

RUN apk add --using-cache curl tar && rm -rf rm -rf /var/cache/apk/*

RUN curl -L https://github.com/spf13/hugo/releases/download/v0.15/hugo_0.15_linux_amd64.tar.gz > hugo-0.15.tgz && \
  tar -xvzf hugo-0.15.tgz && \
  mv hugo_0.15_linux_amd64/hugo_0.15_linux_amd64 /bin/hugo && \
  rm -rf hugo_0.15_linux_amd64

CMD hugo
