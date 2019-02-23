#!/bin/bash
#################################################################################
# Title:         Cloudbox: Community Repo Cloner                                #
# Author(s):     Desimaniac (Original creator) & Migz93 (Community edition)     #
# URL:           https://github.com/Cloudbox/Community                          #
# Description:   Clones Community repo.                                         #
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
COMMUNITY_PATH="$HOME/community"
COMMUNITY_REPO="https://github.com/Cloudbox/Community.git"

## Clone Community and pull latest commit
if [ -d "$COMMUNITY_PATH" ]; then
    if [ -d "$COMMUNITY_PATH/.git" ]; then
        cd "$COMMUNITY_PATH"
        git clean -df
        git pull
        git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)
        git submodule update --init --recursive
    else
        cd "$COMMUNITY_PATH"
        git init
        git remote add origin "$COMMUNITY_REPO"
        git fetch
        git branch master origin/master
        git checkout -f master
        git clean -df
        git pull
        git reset --hard origin/master
        git submodule update --init --recursive
    fi
else
    git clone "$COMMUNITY_REPO" "$COMMUNITY_PATH"
    cd "$COMMUNITY_PATH"
    git submodule update --init --recursive
fi

## Copy settings and config files into Community folder
shopt -s nullglob
for i in "$COMMUNITY_PATH"/defaults/*.default; do
    if [ ! -f "$COMMUNITY_PATH/$(basename "${i%.*}")" ]; then
        cp -n "${i}" "$COMMUNITY_PATH/$(basename "${i%.*}")"
    fi
done
shopt -u nullglob