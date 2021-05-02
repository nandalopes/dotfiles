#!/usr/bin/env bash
set -eu

echo_task() {
  printf "\033[0;34m--> %s\033[0m\n" "$@"
}

error() {
  printf "\033[0;31m%s\033[0m\n" "$*" >&2
  exit 1
}

get_default_branch() {
  local path=$1
  git -C ${path} remote show origin | grep 'HEAD branch' | cut -d' ' -f5
}

git_clean() {
  local path=$(realpath ${1})
  local branch="$(get_default_branch ${path})"
  echo_task "Cleaning ${path} with branch ${branch}"
  local git="git -C ${path}"
  $git checkout ${branch}
  $git fetch origin ${branch}
  $git reset --hard FETCH_HEAD
  $git clean -fdx
}

DOTFILES_USER=${DOTFILES_USER:-nandalopes}
DOTFILES_REPO="https://github.com/$DOTFILES_USER/dotfiles.git"
DOTFILES_BRANCH=${DOTFILES_BRANCH:-main}
DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.dotfiles}"

if [ ! "$(command -v git)" ]; then
  error "Git does not seems to be installed"
  if ! sudo -n true 2>/dev/null; then
    echo_task "Prompting for sudo password to install Git"
    sudo true
  fi
  echo_task "Installing Git"
  sudo apt update
  sudo apt install git -y
fi

if [ -d ${DOTFILES_DIR} ]; then
  git_clean ${DOTFILES_DIR}
else
    echo_task "Cloning ${DOTFILES_REPO} on branch ${DOTFILES_BRANCH} to ${DOTFILES_DIR}"
  git clone -b ${DOTFILES_BRANCH} ${DOTFILES_REPO} ${DOTFILES_DIR}
fi

INSTALL_BIN="${DOTFILES_DIR}/install.sh"
echo_task "Running ${INSTALL_BIN}"
exec ${INSTALL_BIN}
