#!/bin/bash

if [[ -z $1 ]]; then
  echo "No commit range supplied, stopping build"
  exit 1
fi

if [[ -z $2 ]]; then
  echo "No project directory supplied, stopping build"
  exit 1
fi

echo "Changed files for project $2:"
git diff --name-only $1 | sort -u | uniq | grep $2
