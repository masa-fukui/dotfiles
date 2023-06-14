#!/bin/bash

# install tpm
if [ -d ~/.tmux/plugins/tpm ]; then
    echo "tmux plugin manager already exists."
else
    echo "installing tmux plugin manager"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    exit 1

    # set default settings for tmux plugin manager
    cat << EOF >> ~/.tmux.conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF
fi