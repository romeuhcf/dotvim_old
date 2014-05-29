#!/bin/bash
set -e 
(
  echo "INFECTING VIM WITH PATHOGEN"
  mkdir -p ~/.vim/autoload ~/.vim/bundle; 
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
)

(
  cd ~/.vim/bundle
  echo "* NERDTREE"
  test -d nerdtree || git clone https://github.com/scrooloose/nerdtree.git
)


(
  mkdir -p ~/.vim/plugin
  curl -LSso ~/.vim/plugin/NERD_commenter.vim https://raw.githubusercontent.com/scrooloose/nerdcommenter/master/plugin/NERD_commenter.vim
)

(  
  echo "* CTRLP"
  cd ~/.vim/bundle
  test -d ctrlp.vim || git clone https://github.com/kien/ctrlp.vim.git 
)


(
  echo "* Fugitive"
  cd ~/.vim/bundle
  test -d vim-fugitive || git clone https://github.com/tpope/vim-fugitive.git
)

(
  echo '* Syntastic'
  cd ~/.vim/bundle && \
  test -d syntastic || git clone https://github.com/scrooloose/syntastic.git
)

(
  echo "* Powerline"
  cd ~/.vim/bundle && \
  test -d vim-powerline || git clone https://github.com/Lokaltog/vim-powerline.git
)

(
  echo "* GitGutter"
  cd ~/.vim/bundle
  test -d vim-gitgutter || git clone https://github.com/airblade/vim-gitgutter.git
) 

(
  echo "* Solarized theme"
  cd ~/.vim/bundle
  test -d vim-colors-solarized || git clone https://github.com/altercation/vim-colors-solarized.git
)

echo "VIMRC"
cp vimrc.vim ~/.vimrc
