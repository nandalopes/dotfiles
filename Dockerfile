# syntax=docker/dockerfile:1
FROM ubuntu:24.04

LABEL maintainer="Nanda Lopes <nandalopes@gmail.com>"

ENV TERM=xterm-256color

VOLUME /root/.yadr/root/vim/plugged
VOLUME /root/.zprezto

# Let the container know that there is no tty
ARG DEBIAN_FRONTEND=noninteractive

# Bootstrapping packages needed for installation
RUN \
  --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt-get update \
  && apt-get install -qqy \
    locales \
    lsb-release \
    software-properties-common \
  && apt-get clean

# Set locale to UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
RUN localedef -i en_US -f UTF-8 en_US.UTF-8 && \
  /usr/sbin/update-locale LANG=$LANG

# Install dependencies
RUN \
  --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt-get update \
  && apt-get install -qqy \
    curl \
    git \
    sudo \
    wget \
  && apt-get clean

# Install YADR dependencies
RUN \
  --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt-get update \
  && apt-get install -qqy \
    fontconfig \
    ruby-full \
    tmux \
    vim \
    zsh \
  && apt-get clean

# Install optional dependencies
RUN \
  --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  apt-get update \
  && apt-get install -qqy \
    build-essential \
    direnv \
    myrepos \
    ripgrep \
    silversearcher-ag \
    universal-ctags \
  && apt-get clean

# disable docker-clean
RUN mv /etc/apt/apt.conf.d/docker-clean /etc/apt/apt.conf.d/docker-clean.disabled

# Install dotfiles
COPY . /root/.yadr
WORKDIR /root/.yadr
RUN \
  --mount=type=cache,target=/var/cache/apt,sharing=locked \
  --mount=type=cache,target=/var/lib/apt,sharing=locked \
  --mount=type=cache,id=cache-yadr,target=/root/.cache/chezmoi \
  ./install.sh

# Install vim plugins
# RUN vim -es -u ~/.vimrc -i NONE -c 'PlugClean!' -c 'PlugInstall! --sync' -c 'qall'

SHELL [ "/bin/zsh", "--command" ]

# Run a zsh session
CMD [ "/bin/zsh" ]
