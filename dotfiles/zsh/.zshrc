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

alias tts="tmuxinator start"
alias ttc="n ~/.config/tmuxinator/"

alias sc="n ~/.config/sway/config"

alias ec="n ~/myenv/"
alias er="sh ~/myenv/run"

alias int="cd ~/Work/mfe-interactive-invoice/"
alias mocks="cd ~/Work/mocks/"
alias pmc="cd ~/Work/portal-minha-claro/"
alias portal="cd ~/Work/portal-mcr-public/"

alias pn="pnpm"

# pnpm
export PNPM_HOME="/home/itllsv/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
