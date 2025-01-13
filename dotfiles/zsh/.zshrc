export ZSH="$HOME/.oh-my-zsh"

eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh

alias n="nvim"
alias vim="nvim"
alias nc="nvim ~/.config/nvim"

alias zc="n ~/.zshrc"
alias zs="source ~/.zshrc"

alias gc="n ~/.config/ghostty/config"

alias tc="n ~/.tmux.conf"
alias ts="tmux source-file ~/.tmux.conf"
alias tk="tmux kill-session"

alias sc="n ~/.config/sway/config"

alias ec="n ~/myenv/"
alias er="sh ~/myenv/run"
eval "$(~/.local/bin/mise activate zsh)"
