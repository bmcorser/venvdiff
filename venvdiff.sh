#!/usr/bin/env zsh

source $(which virtualenvwrapper_lazy.sh)

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
    pip_freezes[i]=$(mktemp /tmp/venvdiff.XXX)
    trap rm_freezes 1 2 3 15
    echo "#$venv\n" > $pip_freezes[i]
    pip freeze >> $pip_freezes[i]
    deactivate
  fi
done


vimdiff $pip_freezes

rm_freezes
