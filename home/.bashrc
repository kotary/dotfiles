#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source ${HOME}/.dotenv
source ${DOT_DIR}/src/dotlib/init.sh

export PATH="${DOT_DIR}/bin ${PATH}"

__dotlib::load_nix
