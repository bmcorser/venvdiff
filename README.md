# venvdiff

a shell script to diff the output from `pip freeze` commands from multiple virtualenvs, using [vim's](http://www.vim.org/) delightful `vimdiff` shortcut.

## install
    curl https://raw.github.com/bmcorser/venvdiff/master/venvdiff.sh > ~/bin/venvdiff && chmod 0755 !#:3
## requirements
 * zsh
 * vim
 * `~/bin/` created and added to `$PATH`

install command stolen from [ack-grep](http://betterthangrep.com) website
