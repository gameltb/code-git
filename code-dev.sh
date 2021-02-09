#!/bin/bash
VSDIR=$(dirname $0)
exec electron $VSDIR/src/vscode/out/cli.js $VSDIR/src/vscode/code-git.js "$@"
