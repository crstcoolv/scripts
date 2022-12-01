#!/bin/bash

script_file="$HOME/.Scripts/$1"


languages(){
  case $1 in
    fish)
      create_file "fish" "#!/usr/bin/env fish"
      ;;
    py)
      create_file "python" "#!/usr/bin/env python3" 
      ;;
    js)
      create_file "javascript" "#!/usr/bin/env node"
      ;;
    sh)
      create_file "sh" "#!/bin/bash"
      ;;
    lua)
      create_file "lua" "#!/bin/env lua"
      ;;
    *)
      echo $2 not configured!
      ;;
  esac
}


create_file(){
  # $1 = vim filetype, $2 = shebang
  touch $script_file
  chmod +x $script_file
  nvim -c "set ft=$1" -c "normal i$2" -c "normal o" -c "normal o" $script_file

}



case $# in
  0)
    vifm $script_file
    ;;
  1)
    if [[ -f $script_file ]]; then
      nvim $script_file
    else
      create_file "sh" "#!/bin/bash"
    fi
    ;;
  2)
    if [[ $2 == 'del' ]]; then
      rm "$HOME/.Scripts/$1"
    else
      languages $2
    fi
    ;;
  *)
    echo command invalid [usage] sc file_name lang
    echo "to delete: sc file_name del "
esac


