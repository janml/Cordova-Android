# Cordova Build Tools:
Docker image to setup cordova, android sdk and java build tools ...


### Create the container:
Asssuming you have [docker](https://www.docker.com/) installed:
```
docker build -t "cordova" .
```
### Run cordova through docker container:
```
docker run -i --volume "$(pwd)":/usr/workdir/ cordova <args>
```
