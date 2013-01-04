#!/usr/bin/env zsh

source `which virtualenvwrapper_lazy.sh`

# verify $ARGS are venvs in output from `workon`

function rm_freezes {
  rm $pip_freezes
  exit
}

for (( i = 1; i <= ${#@}; i++ ))
do
  venv=${@[i]}
  workon $venv
  if [[ $? > 0 ]]; then
    exit 1
  else
    pip_freezes[i]=`mktemp -t venv`
    trap rm_freezes 1 2 3 15
    echo "#$venv\n" > $pip_freezes[i]
    pip freeze >> $pip_freezes[i]
    deactivate
  fi
done


vimdiff $pip_freezes

rm_freezes
# requirements
#  zsh?
#  virtuenvwrapper
#  vim
#  ~/bin created and added to $PATH

# install like this
# curl https://raw.github.com/bmcorser/venvdiff/master/venvdiff > ~/bin/venvdiff && chmod 0755 !#:3

# using temp files
# http://content.hccfl.edu/pollock/ShScript/TempFile.htm
