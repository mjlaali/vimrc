wget ftp://ftp.vim.org/pub/vim/unix/vim-8.0.tar.bz2
tar xvjf vim-8.0.tar.bz2
cd vim80
./configure --prefix=$HOME \
            --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-perlinterp \
            --enable-gui=gtk2 --enable-cscope \
            --enable-luainterp
make
make install

echo 'alias gvim="~/bin/gvim"' >> ~/.bash_profile
echo 'alias vim="~/bin/vim"' >> ~/.bash_profile
echo 'PATH=$HOME/bin:$PATH' >> ~/.bash_profile
