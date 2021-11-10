# Lines configured by zsh-newuser-install
HISTFILE=/home/adam/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=100000
setopt SHARE_HISTORY
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/adam/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

#Edit commands in vim with v
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line



# Enable colors and change prompt:
autoload -U colors && colors	# Load colors

PS1="%B%{$fg[magenta]%}%n%{$fg[red]%}@%{$fg[cyan]%}%M %{$fg[green]%}%~%{$reset_color%} %F{green} %f"

RPROMPT='%B %(?.√.%F{red}%?✘%f)  %K{black}%*%k%b'

if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
