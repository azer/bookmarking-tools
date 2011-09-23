source account.cfg

. $BOOKMARKS_DIR/log.sh "Fetch Delicious Bookmarks. User: $user"

curl -s "https://$user:$passwd@api.del.icio.us/v1/posts/all"|grep href|sed "s/\s*<post href=\"//"|sed "s/\" hash=\"\w*\" description=\"[^\"]*\" tag=\"/ /"|sed "s/\".*//g"
