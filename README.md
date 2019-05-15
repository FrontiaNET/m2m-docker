# m2m-docker

m2m-docker project

fork from [docker-gradle-angular2](https://github.com/pesoklp13/docker-gradle-angular2)

---
## version 2.0.0
Docker image for gradle 4.2.1 &amp; Angular 7.3.8

Angular CLI upgrade to 7.3.8

### Versions in 2.0.0
- Based on [openjdk:8-jdk](https://hub.docker.com/_/openjdk) Docker image - [github source](https://github.com/docker-library/openjdk/blob/c3023e4da10d10e9c9775eabe2d7baac146e7ae1/8/jdk/Dockerfile)
- [Node 10.15.3](https://github.com/nodejs/node/tree/v10.15.3) inspired by [node:10.15.3](https://github.com/nodejs/docker-node/blob/170ed2092d4925971f9cd3ad5dfc416e820f90fd/10/stretch/Dockerfile)
- Yarn 1.13.0 inspired by [node:10.15.3](https://github.com/nodejs/docker-node/blob/170ed2092d4925971f9cd3ad5dfc416e820f90fd/10/stretch/Dockerfile)
- Angular-cli 7.3.8
- Gradle 4.2.1

---
## version 1.5.0
Docker image for gradle &amp; Angular 5

NodeJS upgrade to 10.15.3

Angular CLI upgrade to 1.7.4 - which is last version for Angular 5 used in project

### Versions in 1.5.0
- Based on [openjdk:8-jdk](https://hub.docker.com/_/openjdk) Docker image - [github source](https://github.com/docker-library/openjdk/blob/c3023e4da10d10e9c9775eabe2d7baac146e7ae1/8/jdk/Dockerfile)
- [Node 10.15.3](https://github.com/nodejs/node/tree/v10.15.3) inspired by [node:10.15.3](https://github.com/nodejs/docker-node/blob/170ed2092d4925971f9cd3ad5dfc416e820f90fd/10/stretch/Dockerfile)
- Yarn 1.13.0 inspired by [node:10.15.3](https://github.com/nodejs/docker-node/blob/170ed2092d4925971f9cd3ad5dfc416e820f90fd/10/stretch/Dockerfile)
- Angular-cli 1.7.4 last version for Angular 5
- Angular-devkit/core 0.0.29 - dependency for Angular-cli
- Gradle 4.2.1

---
## version 1.4.0
Docker image for gradle &amp; Angular 5

Angular CLI upgrade to 1.6.3

### Versions in 1.4.0
- Based on openjdk:8-jdk Docker image
- Node 6.17.0
- Yarn 1.12.3
- Angular-cli 1.6.3
- Angular-devkit/core 0.0.29 - dependency for Angular-cli
- Gradle 4.2.1

---
## version 1.3.0
Docker image for gradle &amp; Angular 5

clean rebuild from scratch taken source code from node:6, gradle:4.2.1-jdk8
based on openjdk:8-jdk - same as gradle:4.2.1-jdk8 has.

Now we have better control over Dockerfile setup and more stable setup with right versioniong under control.

This is the very compatible version with the very base version where we start our fork in v1.0.0

### Versions in 1.3.0
- Node 6.17.0
- Yarn 1.12.3
- Angular-cli 1.4.3
- Gradle 4.2.1

---
## version 1.2.0
automatic yarn versioning support from node image

Docker image for gradle &amp; Angular 5 based on [gradle:4.2.1-jdk8 image](https://github.com/keeganwitt/docker-gradle/blob/2d38bdd0ca754b0ee54ad29a483778fd84bfcbe4/jdk8/Dockerfile) & [node:6 image](https://github.com/nodejs/docker-node/blob/001cfa3930ef8fb02865daaecbe35a3822bec15c/6.11/Dockerfile)

### Versions in 1.2.0
- Node 6
- Angular-cli 1.4.3
- Gradle, 4.2.1

---
## version 1.0.1
fix with yarn copy instruction, so original Dockerfile can be build successfully 

Docker image for gradle &amp; Angular 5 based on [gradle:4.2.1-jdk8 image](https://github.com/keeganwitt/docker-gradle/blob/2d38bdd0ca754b0ee54ad29a483778fd84bfcbe4/jdk8/Dockerfile) & [node:6 image](https://github.com/nodejs/docker-node/blob/001cfa3930ef8fb02865daaecbe35a3822bec15c/6.11/Dockerfile)

### Versions in 1.0.1
- Node 6
- Angular-cli 1.4.3
- Gradle, 4.2.1

---
## version 1.0.0
Base version from previous [docker-gradle-angular2](https://github.com/pesoklp13/docker-gradle-angular2) 

Docker image for gradle &amp; Angular 5 based on [gradle:4.2.1-jdk8 image](https://github.com/keeganwitt/docker-gradle/blob/2d38bdd0ca754b0ee54ad29a483778fd84bfcbe4/jdk8/Dockerfile) & [node:6 image](https://github.com/nodejs/docker-node/blob/001cfa3930ef8fb02865daaecbe35a3822bec15c/6.11/Dockerfile)

### Versions in 1.0.0
- Node 6
- Angular-cli 1.4.3
- Gradle, 4.2.1

## License
The code is available under the [MIT License](https://github.com/FrontiaNET/m2m-docker/blob/master/LICENSE).
