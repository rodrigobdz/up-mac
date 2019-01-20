#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset
set -o errtrace

# Brew
brew update && brew upgrade && brew cleanup; brew doctor

# npm
npm update -g

# Yarn
cd $(yarn global dir)
yarn cache --force clean
rm -rf node_modules/
yarn install
yarn upgrade
yarn autoclean --force

# Mac App Store
mas upgrade

# Fisherman
fish -c "fisher self-update"

# pnpm
pnpm update --global
pnpm prune

# Gem
gem update --user-install

# VSCode
# Coming soon...
# https://github.com/Microsoft/vscode/issues/16459
