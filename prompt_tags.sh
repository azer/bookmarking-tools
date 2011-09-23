url="$1"
tags=""
recoms=$(. reco.sh $url)
prompt=1

while [  $prompt -eq 1 ]; do
  tag=$(echo "$recoms" | dmenu -p "Tags:")
  
  if [ ${#tag} -lt 1 ]; then
    prompt=0
  else
    tags="$tags$tag "
    recoms=$(echo "$recoms"|sed "/$tag/d")
  fi
done

echo "$tags"
