#!/bin/sh

if command -v "asdf" >/dev/null; then
  asdf completion bash
else
  exit 0
fi

