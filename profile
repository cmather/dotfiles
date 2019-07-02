#!/bin/sh

import() {
  if [ -e $1 ]; then
    source $1
  fi
}

## Imports
import $HOME/.profile.d/variables.sh
import $HOME/.profile.d/aliases.sh
import $HOME/.profile.d/colors.sh
import $HOME/.profile.d/functions.sh
import $HOME/.profile.d/git-prompt.sh
import $HOME/.profile.d/path.sh
