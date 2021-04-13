separaTitulo() {
  printf '%.0s\n' $(eval "echo {1..$1}")
  printf '=====\n%s\n' "$2"
}