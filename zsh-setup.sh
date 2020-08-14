#!/bin/bash

# exit when any command fails
set -e

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

mkdir -p "$HOME/.zsh"
cp .zshrc "$HOME/.zsh/."
cp aliasrc "$HOME/.zsh/."

# plugins
git clone --depth=1  https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.zsh/zsh-autosuggestions"
git clone --depth=1  https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"
git clone --depth=1  https://github.com/wting/autojump.git "$HOME/.zsh/autojump"
git clone --depth=1  https://github.com/romkatv/powerlevel10k.git "$HOME/.zsh/powerlevel10k"

touch "$HOME/.cache/zshhistory"