dmenu -i  -l 10  -nb "#333333" -nf "#888888" -sb "#285577" -sf "#ffffff" < $BOOKMARKS_DIR/bookmarks.txt | awk '{print $1}'
