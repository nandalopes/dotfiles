#!/bin/bash

echo
echo "# font to match: < $1 >"

fc-match -s "$1" | head -n 10

echo "# -------------------------------------- #"
echo
