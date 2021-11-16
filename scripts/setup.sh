
# download dracula theme for vim
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula

# install plugin manager for nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim \
    --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install zsh-syntax-highlighting with oh-my-zsh
# after running git clone add the replace the pulugins=... with plugins=(git zsh-syntax-highlighting)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

