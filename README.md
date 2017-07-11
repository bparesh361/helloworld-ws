# helloworld-ws
> Sample spring boot restfulws with docker
# build steps
1. build application : <b>mvn clean package</b>
2. create dockerimage : <b>docker build -t helloworld-ws .</b>
3. verify images  : <b>docker images</b>
4. run image : <b>docker run -d -it -p 9091:8090 helloworld-ws --name my-running-app</b>
5. verify container : <b>docker ps</b>
6. verify : <b>curl localhost:9091/hello-world</b>
7. ssh into docker container : <b>docker exec -it <container-id> bash</b>


#some of the docker commands
1. mounting a file / directory from host to container (using -v option e.g. docker run -it -d -p 9091:8090 -v /tmp:/var/log  helloworld-ws
2. auto restarting containers : --restart=on-failure:3
3. to delete all containers which has returned non-zero status : docker rm $(docker ps -a -q --filter 'exited!=0')
4. to delete all tangling images - docker rmi $(docker images -q -f "dangling=true")
5. --rm option while running container will remove container after it is stopped
6. docker logs <container-id>
7. docker events
8. docker stats <container-id>

Notes :
1. to set the env. specific property use -Dspring.profiles.active=<env>

