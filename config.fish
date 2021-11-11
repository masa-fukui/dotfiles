#   ____  ____  ___  _   _ 
#  ( ___)(_  _)/ __)( )_( )
#   )__)  _)(_ \__ \ ) _ ( 
#  (__)  (____)(___/(_) (_)
#
#      "My Fish Config"
#       Masa Mark Fukui
#        Nov 11, 2021 

if status is-interactive
    # Commands to run in interactive sessions can go here
end


### Basic Setting ###
set -g theme_nerd_fonts yes


### Path & Initialization ###
set -x PATH /usr/local/bin $PATH
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $PATH /usr/local/go/bin


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/masa/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


### Functions AKA Aliases ###
function el
    exa -l
end

