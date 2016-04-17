echo "Set caps lock as ctrl"
setxkbmap -layout us -option ctrl:nocaps

echo "Install git"
sudo apt-get install -y git

echo "Set git preference"
git config --global user.name "ihorbryk"
git config --global user.email "ihorbryk@gmail.com"
git config --global core.editor "vim"


echo "Install vim"
sudo apt-get install -y vim

echo "Install fonts for vim-airline"
git clone https://github.com/powerline/fonts.git
./fonts/install.sh

echo "Install vandle for vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Copy dot files"
cp .vimrc ~/
cp .bashrc ~/

echo "Done!"
