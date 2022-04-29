#/bin/bash
if [[ $# = 0 ]]; then
  echo "usage: grep_delete_match"
fi

grep "$1" . -rn  | cut -d : -f1 | sort | uniq | xargs -I {} sed -i "/$1/d" {}
