# Oh My Zsh

export ZSH=/home/jeferson/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Profile

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

