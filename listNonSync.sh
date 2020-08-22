#!/bin/bash

list=()
for name in $(docker ps --format '{{.Names}}') 
do 
    if docker exec $name witnet node nodeStats | grep -q "Synchronization progress"; then
        list+=( $name )
    fi
done

for t in ${list[@]}; do
  echo "--------------- $t ---------------"
done