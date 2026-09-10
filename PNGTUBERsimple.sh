#!/bin/sh
printf '\033c\033]0;%s\a' PNG TUBER simple
base_path="$(dirname "$(realpath "$0")")"
"$base_path/PNGTUBERsimple.x86_64" "$@"
