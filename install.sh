#!/bin/bash

base_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

echo "Dotfiles (${base_dir})"

if [ "$CODESPACES" = "true" ]; then
  source ${base_dir}/codespaces.sh
fi
