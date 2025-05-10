#!/bin/bash
. ~/.dotfiles/.aliases
. ~/.dotfiles/.functions

FZF_DEFAULT_COMMAND="find . -type f -not -path '*/\.git/*'"
PS1='\[\e[32m\][\u]\[\e[34m\][\w]\[\e[36m\]\n>=> '
