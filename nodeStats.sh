# docker-compose ps -q | parallel docker exec {} witnet node nodeStats
for name in $(docker ps --format '{{.Names}}') 
do 
    echo "$name"
    docker exec $name witnet node nodeStats
done