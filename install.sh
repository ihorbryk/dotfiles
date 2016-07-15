setxkbmap -layout us -option ctrl:nocaps

git config --global user.name "ihorbryk"
git config --global user.email "ihorbryk@gmail.com"
git config --global core.editor "vim"


sudo apt-get install -y vim

git clone https://github.com/powerline/fonts.git
./fonts/install.sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .vimrc ~/
cp .bashrc ~/

sudo apt-get install -y virtualbox
sudo apt-get install -y vagrant

echo "Done!"
