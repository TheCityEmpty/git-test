git status
echo '检查变动文件->' + $?

git add .
echo '将所有变动文件添加到缓存区->' + $?
echo $1

if [ $1 ] ; then
    echo 'a'
    git commit -m $1
  else
    echo 'b'
    read commitMsg
    git commit -m $commitMsg
  fi

git push
echo '将代码推入到远程分支息->' + $?

