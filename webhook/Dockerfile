FROM golang:alpine
MAINTAINER Shinichi SUGIYAMA <shin.sugi@gmail.com>

RUN apk add --update --no-cache git ca-certificates nodejs
RUN go get -u github.com/spf13/hugo
RUN go get -u github.com/ssugiyama/ghooks-cmd-runner

WORKDIR /
VOLUME /src
VOLUME /output
ADD config.toml /config.toml
ADD update_asm.sh /update_asm.sh
RUN chmod +x /update_asm.sh

CMD ["/go/bin/ghooks-cmd-runner", "--config=/config.toml"]

EXPOSE 8080
