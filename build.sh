#!/usr/bin/env bash
set -u

# Backup old tmux configs
if [ -e ~/.tmux.conf ]
then
    echo "Backing up old .tmux.conf"
    mv ~/.tmux.conf ~/.tmux.conf.bak
fi

if [ -e ~/.tmux ]
then
    echo "Backing up old .tmux"
    mv ~/.tmux ~/.tmux.bak
fi

# Install new config in home folder
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux.conf ~/.tmux.conf

echo "Type \"Ctrl-a I\" in tmux to load plugins."
