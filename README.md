# venvdiff

a shell script to diff the output from `pip freeze` commands from multiple
virtualenvs, using
[virtualenvwrapper](http://www.doughellmann.com/projects/virtualenvwrapper/)
and [vim](http://www.vim.org/)'s delightful `vimdiff` shortcut.

# example

```bash
$ venvdiff my_project_dev my_project_prod
```

Will open a vim diff that looks vaugely like:

# install

create `~/bin/` and add to your `$PATH`

```bash
$ curl https://raw.github.com/bmcorser/venvdiff/master/venvdiff.sh > ~/bin/venvdiff && chmod 0755 !#:3
```

# requirements

 * [virtualenvwrapper](http://www.doughellmann.com/projects/virtualenvwrapper/)
 * [vim](http://www.vim.org/)
