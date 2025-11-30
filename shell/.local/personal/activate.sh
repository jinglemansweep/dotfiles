#!/bin/bash

# echo "Activating..."

# VARS
dotfiles_dir="${HOME}/.local/personal"
env_file="${dotfiles_dir}/env.sh"
env_local_file="${dotfiles_dir}/env.local.sh"
secrets_local_file="${dotfiles_dir}/secrets.local.sh"

# SETUP
mkdir -p ~/.local/bin ~/.npm-global/bin

# PATH
PATH="$PATH:${HOME}/.local/bin"
PATH="$PATH:${HOME}/.npm-global/bin"
export PATH

# ENVIRONMENT: COMMON
if [ -f ${env_file} ]; then
  . ${env_file}
fi

# ENVIRONMENT: LOCAL
if [ -f ${env_local_file} ]; then
  . ${env_local_file}
fi

# SECRETS
if [ -f ${secrets_local_file} ]; then
  . ${secrets_local_file}
fi

# SHELL PROMPT
if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

# ALIASES
alias stow="stow -t ${HOME}"

# INFISICAL
if [ ! -z "${INFISICAL_PROJECT_ID}" ] && [ ! -z "${INFISICAL_ENV}" ] && [ ! -z "${INFISICAL_PATHS}" ]; then
  echo -n "Infisical [${INFISICAL_ENV}]: "
  temp_secrets=$(mktemp)
  for path in ${INFISICAL_PATHS}; do
    echo -n "${path} "
    infisical export \
      --silent \
      --format dotenv-export \
      --projectId "${INFISICAL_PROJECT_ID}" \
      --env "${INFISICAL_ENV}"\
      --path "${path}" >> "${temp_secrets}"
  done
  if [ -f "${temp_secrets}" ]; then
    . "${temp_secrets}"
    rm -f "${temp_secrets}"
  fi
  echo ""
fi
