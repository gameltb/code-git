#!/bin/bash
set -ex

git --git-dir=vscode fetch --all
cd $(dirname $0)/src/vscode
git stash
git pull
git stash pop
export ELECTRON_SKIP_BINARY_DOWNLOAD=1
export PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1
yarn install
yarn compile
ls node_modules.asar.unpacked || ln -s node_modules node_modules.asar.unpacked
ls code-git.js || cp -a ../../code-git.js .

