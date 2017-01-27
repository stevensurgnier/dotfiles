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
    absfile="$PWD/${relfile##*/}"
    if [[ ! "$SYMLINKIGNORE" =~ "$relfile" ]]; then
        ln -sv $absfile $HOME/$relfile
    fi
done
