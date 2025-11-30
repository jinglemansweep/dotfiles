#!/bin/bash

# echo "Activating..."

# SETUP
mkdir -p ~/.local/bin ~/.npm-global/bin

# PATH
PATH="$PATH:/home/louis/.local/bin"
PATH="$PATH:/home/louis/.npm-global/bin"
export PATH

# ENVIRONMENT: COMMON
if [ -f ~/.local/personal/env/common.sh ]; then
  . ~/.local/personal/env/common.sh
fi

# ENVIRONMENT: LOCAL
if [ -f ~/.local/personal/env/local.sh ]; then
  . ~/.local/personal/env/local.sh
fi

# SECRETS
if [ -f ~/.local/personal/secrets.sh ]; then
  . ~/.local/personal/secrets.sh
fi

# SHELL PROMPT
if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

# ALIASES
alias stow="stow -t ${HOME}"
