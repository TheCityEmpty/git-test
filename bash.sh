echo '检查变动文件->'
git status

echo '将所有变动文件添加到缓存区->'
git add .

echo '请输入commit消息->'
read -s commitMsg
git commit -m $commitMsg

echo '将代码推入到远程分支->'
git push