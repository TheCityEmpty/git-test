#!/usr/bin/env sh

set -u

git status
echo '检查变动文件->' + $?

git add .
echo '将所有变动文件添加到缓存区->' + $?

if [ $1 ] ; then
    git commit -m $1
  else
    read commitMsg
    git commit -m $commitMsg
  fi

git push
echo '将代码推入到远程分支息->' + $?

if [ $? = 1 ] ; then
  git pull
  if [ $? = 1 ] ; then
    git push
  fi
fi

