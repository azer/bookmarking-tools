goto=$(. $BOOKMARKS_DIR/list.sh)
if [ ${#goto} -gt 0 ]; then
  eval "$BROWSER $goto"
fi
