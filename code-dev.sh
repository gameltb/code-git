#!/bin/bash

ELECTRON_RUN_AS_NODE=1 exec electron ./src/vscode/out/cli.js ./code-git.js "$@"
