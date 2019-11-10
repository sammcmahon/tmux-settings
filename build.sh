#!/usr/bin/env bash
set -u

# Backup old tmux configs
if [ -e ~/.tmux.conf ]
then
    echo "Backing up old .tmux.conf"
    mv -f ~/.tmux.conf ~/.tmux.conf.bak
fi

if [ -e ~/.tmux ]
then
    echo "Backing up old .tmux"
    mv -f ~/.tmux ~/.tmux.bak
fi

# Install new config in home folder
if [ -e ~/.tmux ]
then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
cp tmux.conf ~/.tmux.conf

echo "Type \"Ctrl-a I\" in tmux to load plugins."
