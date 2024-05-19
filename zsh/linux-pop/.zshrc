############################################
# - Zinit
############################################

# zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light Aloxaf/fzf-tab

# load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# add in snippets
zinit snippet OMZP::git
zinit snippet OMZ::plugins/git/git.plugin.zsh

############################################
# - Environment & Path
############################################
# Environment
export WORK_ENV='linux-pop'
export EDITOR='nvim'

# path
. "$HOME/.cargo/env"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH=$PATH:/usr/local/go/bin
# export GOROOT=/usr/local/go
# export GOPATH=$GOROOT/src
# export GOBIN=$GOROOT/bin
export PATH=$PATH:$HOME/go/bin

############################################
# - Alias & Keybind
############################################
# alias
alias c='clear'
alias v='nvim'
alias sf='screenfetch'
alias ls='exa'
alias el='exa -l'
alias elt='exa -l --tree'
alias bat='batcat'

unalias zi

# History 
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey '^[OA' history-beginning-search-backward
bindkey '^[OB' history-beginning-search-forward
bindkey '^I'   complete-word       # tab          | complete
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest

############################################
# - Initialization & Plugins
############################################
# init
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"

############################################
# - Misc
############################################
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY
