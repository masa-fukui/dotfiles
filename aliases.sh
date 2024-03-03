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
