source "$BOOKMARKS_DIR/account.cfg"
url="$1"
tags="$2"
title="$3"

. $BOOKMARKS_DIR/log.sh "New Bookmark: $url (tags: $tags, title: $title)"

sed -i  "1i $url $tags" $BOOKMARKS_DIR/bookmarks.txt

# sync delicious
if [ ${#user} -gt 0 ]; then

  response=$(curl -s "https://$user:$passwd@api.del.icio.us/v1/posts/add" -d "url=$url&description=$title&tags=$tags")
  done=$(echo "$response"|grep "code=\"done\"")

  if [ ${#done} -eq 0 ]; then
    . $BOOKMARKS_DIR/log.sh "Error occured adding '$url' to delicious account ($user)."
  fi

else
  . $BOOKMARKS_DIR/log.sh "'$url' not added to Delicious."
fi
