#!/bin/bash

wget https://github.com/ChrisTitusTech/zsh/raw/master/.zshrc -O ~/.zshrc
mkdir -p "$HOME/.zsh"
wget https://github.com/ChrisTitusTech/zsh/raw/master/.zsh/aliasrc -O ~/.zsh/aliasrc

# plugins 
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.zsh/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"
# git clone https://github.com/zsh-users/zsh-completions.git "$HOME/.zsh/zsh-completions"
git clone https://github.com/wting/autojump.git "$HOME/.zsh/autojump"
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.zsh/powerlevel10k"
