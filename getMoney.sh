list=()
for name in $(docker ps --format '{{.Names}}') 
do 
    if docker exec $name witnet node getBalance | grep -q "0.000000000 wits"; then
        :
    else
        list+=( $name )
    fi
done

for t in ${list[@]}; do
  echo "--------------- $t ---------------"
  docker exec $t witnet node getBalance
done