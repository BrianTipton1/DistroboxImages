#!/bin/zsh
source ~/.cache/zsh/.zshrc
CMD_NAME=$(basename "$0")
distrobox enter latex -- $CMD_NAME "$@"
