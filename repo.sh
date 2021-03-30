#!/bin/bash
#################################################################################
# Title:         Cloudbox: Cloudbox Repo Cloner                                 #
# Author(s):     Desimaniac                                                     #
# URL:           https://github.com/Cloudbox/Cloudbox                           #
# Description:   Clones Cloudbox repo.                                          #
# --                                                                            #
#             Part of the Cloudbox project: https://cloudbox.works              #
#################################################################################
#                     GNU General Public License v3.0                           #
#################################################################################
# Usage:                                                                        #
# ======                                                                        #
# curl -s https://cloudbox.works/repo.sh | bash                                 #
# wget -qO- https://cloudbox.works/repo.sh | bash                               #
#################################################################################


## Variables
CLOUDBOX_PATH="$HOME/cloudbox"
CLOUDBOX_REPO="https://github.com/Cloudbox/Cloudbox.git"

## Clone Cloudbox and pull latest commit
if [ -d "$CLOUDBOX_PATH" ]; then
    if [ -d "$CLOUDBOX_PATH/.git" ]; then
        cd "$CLOUDBOX_PATH"
        git fetch --all --prune
        git checkout master
        git reset --hard origin/master
        git submodule update --init --recursive
    else
        cd "$CLOUDBOX_PATH"
        rm -rf library/
        git init
        git remote add origin "$CLOUDBOX_REPO"
        git fetch --all --prune
        git branch master origin/master
        git reset --hard origin/master
        git submodule update --init --recursive
    fi
else
    git clone "$CLOUDBOX_REPO" "$CLOUDBOX_PATH"
    cd "$CLOUDBOX_PATH"
    git submodule update --init --recursive
fi

## Copy settings and config files into Cloudbox folder
shopt -s nullglob
for i in "$CLOUDBOX_PATH"/defaults/*.default; do
    if [ ! -f "$CLOUDBOX_PATH/$(basename "${i%.*}")" ]; then
        cp -n "${i}" "$CLOUDBOX_PATH/$(basename "${i%.*}")"
    fi
done
shopt -u nullglob

## Set nano as default editor
export EDITOR=nano
if [[ "$SHELL" == *"bash"* ]]; then
    if [ -f $HOME/.bashrc ]; then
        sed -i '/^[ \t]*export EDITOR=/{h;s/=.*/=nano/};${x;/^$/{s//export EDITOR=nano/;H};x}' $HOME/.bashrc
    elif [ -f /etc/skel/.bashrc ]; then
        cp /etc/skel/.bashrc $HOME/.bashrc
        chown $USERNAME:$USERNAME $HOME/.bashrc
        chmod 644 $HOME/.bashrc
        sed -i '/^[ \t]*export EDITOR=/{h;s/=.*/=nano/};${x;/^$/{s//export EDITOR=nano/;H};x}' $HOME/.bashrc
    fi
elif [[ "$SHELL" == *"zsh"* ]]; then
    if [ -f $HOME/.zshrc ]; then
        sed -i '/^[ \t]*export EDITOR=/{h;s/=.*/=nano/};${x;/^$/{s//export EDITOR=nano/;H};x}' $HOME/.zshrc
    fi
fi
