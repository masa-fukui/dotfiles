# shell functions
function take {
    mkdir -p $1
    cd $1
}

function osync {
    git add . && git commit -m "obsidian update: $(date)"
    git push -u origin HEAD
}

function gwa {
    if [ "$#" -ne 2 ]; then
        echo "Usage: gwa <feature type> <branch name>"
        return
    fi

    local feature_type=$1
    local branch_name=$2

    git worktree add -b $feature_type/$branch_name .worktrees/$feature_type/$branch_name

}

function newsess {
    tmux new -s $1 -d
}

# alias 
alias e=exa
alias el="exa -l"
alias ll="exa -l"
alias et="exa -T"
alias elt="exa -lT"

alias rustbook='open -a "Google Chrome" ~/workspace/book/book/index.html'
alias gcommit='~/dotfiles/scripts/gum/better_commit.sh'
alias gswitch='~/dotfiles/scripts/gum/better_switch.sh'

alias c=clear

alias wrename='tmux rename-window'
alias ktl=kubectl
alias gowork='~/go/src/github.com/Masamerc/'
alias k=kubectl

alias lg=lazygit

alias vim=nvim
