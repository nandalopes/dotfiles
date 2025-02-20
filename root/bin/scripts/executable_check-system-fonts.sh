#!/bin/bash

xargs -ta ~/.backup/chezmoi/check-system-fonts.txt -d"\n" -n1 \
  ~/bin/scripts/list-10-candidates.sh
