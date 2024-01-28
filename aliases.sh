function take {
    mkdir -p $1
    cd $1
}

function osync {
    git add . && git commit -m "obsidian update: $(date)"
    git push -u origin HEAD
}

