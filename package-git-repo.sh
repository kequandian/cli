#!/bin/sh
target=$(basename $(pwd)).tar

tar -cvf $target --exclude=.git --exclude=.idea --exclude=*.tar --exclude=.vscode .
