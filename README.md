# Cordova Android:
Docker image to build your cordova app for android ...


### Create the container:
Asssuming you have [docker](https://www.docker.com/) installed:
```
docker build -t "cordova" .
```
### Run cordova through docker container:
```
docker run -i --volume "$(pwd)":/usr/workdir/ cordova <args>
```
