# venvdiff

a shell script to diff the output from `pip freeze` commands from multiple virtualenvs, using [virtualenvwrapper](http://www.doughellmann.com/projects/virtualenvwrapper/) and [vim's](http://www.vim.org/) delightful `vimdiff` shortcut.

## install

create `~/bin/` and add to your `$PATH`

    curl https://raw.github.com/bmcorser/venvdiff/master/venvdiff.sh > ~/bin/venvdiff && chmod 0755 !#:3

## requirements
 * virtualenvwrapper
 * vim

install command stolen from [ack-grep](http://betterthangrep.com) website
