url=$1
user=$2
passwd=$3
query=$(curl "https://$user:$passwd@api.del.icio.us/v1/posts/suggest?url=$url" -s|grep recommended)
echo "$query" | sed "s/  <\w*>//g"  | sed "s/<\/\w*>//g"
