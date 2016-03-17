sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo pip2 install neovim
sudo pip3 install neovim
nvim "Please-Wait--Plugins-Are-Installing" +PlugInstall +qall
~/.vim/plugged/YouCompleteMe/install.py --gocode-completer --tern-completer
