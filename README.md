A set of bash scripts I coded to store my bookmarks in both a text file and
my del.icio.us account. 

Dependencies: curl, dmenu (optional)

Install
=======
    > git clone git@github.com:azer/bookmarking-tools.git
    > cd bookmarking-tools

Del.icio.us Synchronization
===========================
To enable synchronization with del.icio.us, edit account.cfg as following:

    > cat > account.cfg
    user="foo"
    passwd="bar"
    > export BOOKMARKS_DIR="$HOME/bookmarks"

Usage
=====
Download existing del.icio.us bookmarks to start;

    > ./fetch.sh username passwd > bookmarks.txt

Add new bookmark;

    > ./add.sh "http://localhost" "some tags" "title"

List bookmarks using dmenu:

    > ./list.sh

Browse with your default browser:

    > ./browse.sh

Tagging dialog with recommendations:

    > ./prompt_tags.sh google.com

Get recommended tags for a specific URL:
  
    > ./reco.sh "http://github.com"

Check for errors, synchronization problems etc:

    > cat logs|grep error

vim: tw=75
