{{- /*
  vim:ft=bash.gotmpl:
  */ -}}

#!/usr/bin/env bash

sed -E '/^#|^$/d' <<EOL | LC_COLLATE=C.UTF-8 sort -u
