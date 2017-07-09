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
