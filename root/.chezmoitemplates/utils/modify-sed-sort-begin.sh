{{- /*
  vim:ft=bash.gotmpl:
  */ -}}

#!/usr/bin/env bash

tempfile="$(mktemp)"
touch "${tempfile}"
trap 'rm -rf "${tempfile}"' EXIT
cat > "${tempfile}"
sed -i -E '/^#|^$/d' "${tempfile}"

sed -E '/^#|^$/d' <<EOL | tee -a "${tempfile}" >/dev/null
