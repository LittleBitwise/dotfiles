# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# The following lines were added by compinstall
zstyle :compinstall filename '/home/neen/.zshrc'

autoload -Uz compinit
# End of automatic config
source ~/git/marlonrichert/zsh-autocomplete/zsh-autocomplete.plugin.zsh

alias py='python3'
alias sa='source ~/.zshrc; echo "Reloaded ~/.zshrc"'
alias se="nano ~/.zshrc"

export PATH="$HOME/.local/bin:$PATH"
export COLORTERM=truecolor

setopt PROMPT_SUBST
NEWLINE=$'\n'
PROMPT='%F{1}%2d%f${NEWLINE}%F{9}$%f '

# zsh plugin manager
[[ -r ~/git/znap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/git/znap
source ~/git/znap/znap.zsh

# z with interactive fuzzy search
eval "$(zoxide init --cmd cd zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
