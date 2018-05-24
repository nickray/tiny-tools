FROM alpine:3.7

RUN apk --no-cache add \
  curl bind-tools netcat-openbsd jq coreutils \
  zsh zsh-vcs \
  htop tree git

ADD https://git.grml.org/f/grml-etc-core/etc/zsh/zshrc /etc/zsh/zshrc
