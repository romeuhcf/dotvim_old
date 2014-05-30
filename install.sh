#!/bin/bash
set -e
cp vimrc.vim ~/.vimrc.after
ROOT=~/.vim/janus/vim/tools
test -d $ROOT || curl -Lo- https://bit.ly/janus-bootstrap | bash
cd $ROOT

for github in  airblade/vim-gitgutter  Lokaltog/vim-powerline  Valloric/YouCompleteMe
do
  TOOL=$( basename "$github" )
  echo " * Installing $TOOL"
  test -d $TOOL || git clone https://github.com/$github.git
done


cd $ROOT/YouCompleteMe
git submodule update --init --recursive
sudo apt-get install cmake python-dev build-essential
if [ ! -f $ROOT/YouCompleteMe/third_party/ycmd/ycm_core.so ]; then
  cmake -G "Unix Makefiles" . $ROOT/YouCompleteMe/third_party/ycmd/cpp
  make ycm_support_libs
fi


