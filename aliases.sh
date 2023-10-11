function take {
    mkdir -p $1
    cd $1
}

function osync {
    cd ~/Documents/obsidian-vault
    git add . && git commit -m "Sync: from Obsidian"
    git push -u origin HEAD
}
