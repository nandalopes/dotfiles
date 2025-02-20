printBlankLinesAndMessage() {
  printf '%.0s\n' $(seq "$1")
  printf '# =====\n# %s\n' "$2"
}
