# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

setopt autocd
stty stop undef
setopt interactive_comments
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.cache/zsh/history

source "$HOME/.config/shell/aliasrc"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '?' backward-delete-char

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.config/zsh/plugins/zsh-z.plugin.zsh

autoload -U promptinit; promptinit
#prompt spaceship

#case $TERM in
#    xterm*|termite|alacritty|foot)
#	precmd () {print -Pn "\e]0;[${PWD/#$HOME/~}] $(history | tail -n1 | awk '{for (i=2;i<=NF-1;i++) printf $i " "; print $NF}')\a"}
#        ;;
#esac

source ~/.config/shell/aliasrc
