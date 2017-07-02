FROM alpine
MAINTAINER Shinichi SUGIYAMA <shin.sugi@gmail.com>

WORKDIR /
RUN apk add --update --no-cache git curl unzip nodejs-npm
RUN curl -LO https://github.com/gohugoio/hugo/releases/download/v0.24.1/hugo_0.24.1_Linux-64bit.tar.gz
RUN tar xf hugo_0.24.1_Linux-64bit.tar.gz
RUN rm hugo_0.24.1_Linux-64bit.tar.gz
RUN curl -LO https://github.com/tkuchiki/ghooks-cmd-runner/releases/download/v0.4.2/ghooks-cmd-runner_linux_amd64.zip
RUN unzip ghooks-cmd-runner_linux_amd64.zip
RUN rm ghooks-cmd-runner_linux_amd64.zip
RUN mv hugo ghooks-cmd-runner /usr/local/bin
VOLUME /src
VOLUME /output
ADD .env /.env
ADD config.toml /config.toml
ADD update_asm.sh /update_asm.sh
RUN chmod +x /update_asm.sh

CMD ["/usr/local/bin/ghooks-cmd-runner", "--config=/config.toml"]

EXPOSE 18889
