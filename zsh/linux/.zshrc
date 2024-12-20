
if [ -f $HOME/.env.sh ]; then
    . $HOME/.env.sh
fi
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
zinit light jeffreytse/zsh-vi-mode

# load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# add in snippets
zinit snippet OMZP::git
zinit snippet OMZ::plugins/git/git.plugin.zsh
zinit snippet https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/key-bindings.zsh

############################################
# - Environment & Path
############################################
# Environment
export WORK_ENV='linux'
export EDITOR='nvim'

# path
. "$HOME/.cargo/env"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH=$PATH:/usr/local/go/bin
# export GOROOT=/usr/local/go
# export GOPATH=$GOROOT/src
# export GOBIN=$GOROOT/bin
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.local/bin

############################################
# - Alias & Keybind
############################################
# alias
alias c='clear'
alias v='nvim'
alias ff='screenfetch'
alias ls='eza'
alias bat='batcat'
alias el="eza -l --icons --git -a"
alias elt="eza --tree --level=3 --long --icons --git"
alias oupdate="git add . && git commit -m 'update $(date)' && git push"
alias fd="fdfind"
alias pipes="pipes.sh"
alias ff="fastfetch"
alias code="code --enable-features=UseOzonePlatform --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto"
alias ya="yazi"
unalias zi

# functions
function take() {
    mkdir -p $1
    cd $1
}

# History 
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey '^[OA' history-beginning-search-backward
bindkey '^[OB' history-beginning-search-forward

# Ctrl+E to edit the command line
bindkey '^E' edit-command-line

############################################
# - Initialization & Plugins
############################################
# init
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fzf --zsh)"

############################################
# - Misc
############################################
HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
setopt SHARE_HISTORY

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

############################################
# - NVM
############################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
