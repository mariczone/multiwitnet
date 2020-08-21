for name in $(docker ps --format '{{.Names}}') 
do 
    if docker exec $name witnet node nodeStats | grep -q "Synchronization progress"; then
        echo "$name"
    fi
done