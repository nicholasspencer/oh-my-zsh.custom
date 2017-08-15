docker-sh() { 
  docker exec -it $(docker ps -aqf "name=$1") sh;
}