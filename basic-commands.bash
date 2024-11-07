docker pull = pulls the latest image from docker hub
docker images = lists all the images on your system
docker run = runs a container
docker ps = lists all the running containers
docker stop = stops a running container
docker rm = removes a container
docker rmi = removes an image
docker ps -a = lists all the containers and their status
docker run redis:4.0 = runs a container with the image redis:4.0
docker run -p6000:6379 redis = runs a container with the image redis and maps the port 6000 to the port 6379 of the container (Port binding)


docker logs <CONTAINER_ID> = shows the logs of a container
docker run -d -p6001:6379 --name redis-older redis:4.0 = runs a container with the image redis:4.0 and maps the port 6001 to the port 6379 of the container (Port binding) and gives the container a name redis-older


docker exec -it <CONTAINER_ID> /bin/bash = opens a bash shell in a running container

# docker run command runs a container but docker start command starts a stopped container

docker network ls = lists all the networks
docker network create <NETWORK_NAME> = creates a network

docker run -p 27017:27017 -d -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo
    -d detached mode
    -p 27017:27017 port mapping
    -e MONGO_INITDB_ROOT_USERNAME=admin mongodb environment variable
    -e MONGO_INITDB_ROOT_PASSWORD=password mongodb environment variable
    --name mongodb mongodb container name
    --net mongo-network mongodb network

docker rm mongodb = removes the container mongodb
dokcer rmi mongo = removes the image mongo




# Docker compose
docker-compose up = starts the containers
docker-compose down = stops the containers
docker-compose ps = lists the running containers
docker-compose stop = stops the containers
docker-compose -f mongo.yaml up 
docker-compose -f mongo.yaml down 



# Docker volumes make the data persistent


# Docker files
# Docker file are used to build images, it's a blueprint of an image

docker build -t <image_name>:1.0 . = builds an image


docker tag <tag_name> <ECR_registry_url>/<image_name>:<tag_version> = tags an image (Taging means making a copy of the image)
docker push <ECR_registry_url>/<image_name>:<tag_version> = pushes an image to the ECR (Elastic container registry) registry


