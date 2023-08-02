#!/bin/bash

if [[ ! -f $1 ]]; then
  echo "::debug::${1} file does not exist"
  exit 0
fi

cat .env | while read line || [[ -n $line ]];
do
  [[ ${line//[[:space:]]/} =~ ^#.* || -z "$line" ]] && continue
  echo $line | tr "=" "\n" | while read -r key; do
  read -r value
    if [[ ! -z "${key}" && ! -z "${value}" ]]; then
      echo "${key}=${value}" >> $GITHUB_ENV
    fi
  done
done
