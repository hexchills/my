#!/bin/bash

git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

cp ../.config/doom/* ~/.doom.d/

~/.emacs.d/bin/doom sync

