 ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#from her i started my script on bash project.

username=$(whoami)
echo "hi $username"

export COURSE_ID="DevOpsTheHardWay"

if [ -f "$HOME/.token" ]; then
  file_permissions=$(stat -c "%a" "$HOME/.token")
  if [ "$file_permissions" != "600" ]; then
    echo "Warning .token file has too much permissions!!😤"
  fi
fi

umask 006

export PATH="$PATH:$HOME/usercommands"

date +%Y-%m-%d %H:%M:%S

alias ltxt='ls *.txt'

if [ ! -d "$HOME/temp" ]; then
  mkdir "$HOME/temp"
else
  rm -rf "$HOME/temp"/*
fi

fuser -k 8080/tcp 2>/dev/null

echo "Hello .bash_profile work!!🏆🥇"

