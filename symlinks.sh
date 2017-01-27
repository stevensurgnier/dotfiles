#!/bin/bash

SYMLINKIGNORE="
.
..
$0
.symlinkignore
.git
.gitignore
"

if [ -f .symlinkignore ]; then
    SYMLINKIGNORE="$SYMLINKIGNORE $(cat .symlinkignore)"
fi

for relfile in {.,}*; do
    if [[ ! "$SYMLINKIGNORE" =~ "$relfile" ]]; then
        absfile="$PWD/${relfile##*/}"
        ln -sv $absfile $HOME/$relfile
    fi
done
