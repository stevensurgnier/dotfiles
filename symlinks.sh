#!/bin/bash

SYMLINKIGNORE="
.
..
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
