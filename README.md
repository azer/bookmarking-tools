A set of bash scripts I coded to store my bookmarks in both a text file and
my del.icio.us account.

Usage
=====
    > export BOOKMARKS_DIR="$HOME/bookmarks"
    > cd "$BOOKMARKS_DIR"

Download existing del.icio.us bookmarks to start;
    > ./fetch.sh username passwd > bookmarks.txt

Add new bookmark;
    > ./add.sh "http://localhost" "some tags" "title"

To post new bookmarks to Del.icio.us also, pass username and password parameters:
    > ./add.sh "http://wikipedia.org" "reference research community" "Wikipedia" leonardo 314159

List bookmarks using dmenu:
    > ./list.sh

Browse with your default browser:
    > ./browse.sh

Check for errors, synchronization problems etc:
    > cat logs|grep error

vim: tw=75
