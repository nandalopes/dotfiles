separaTitulo() {
  printf '%.0s\n' $(eval "echo {1..$1}")
  printf '=====\n%s\n' "$2"
}

keyringName() {
  echo "/usr/local/share/keyrings/$1-archive-keyring.gpg"
}

