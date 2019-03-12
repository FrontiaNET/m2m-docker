# m2m-docker

m2m-docker project

fork from [docker-gradle-angular2](https://github.com/pesoklp13/docker-gradle-angular2)

---
## version 1.4.0
Docker image for gradle &amp; angular 2

Angular CLI upgrade to 1.6.3

### Versions in 1.4.0
- Node 6.17.0
- Yarn 1.12.3
- Angular-cli 1.6.3
- Angular-devkit/core 0.0.29 - dependency for Angular-cli
- Gradle 4.2.1

---
## version 1.3.0
Docker image for gradle &amp; angular 2

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

Docker image for gradle &amp; angular 2 based on [gradle:4.2.1-jdk8 image](https://github.com/keeganwitt/docker-gradle/blob/2d38bdd0ca754b0ee54ad29a483778fd84bfcbe4/jdk8/Dockerfile) & [node:6 image](https://github.com/nodejs/docker-node/blob/001cfa3930ef8fb02865daaecbe35a3822bec15c/6.11/Dockerfile)

### Versions in 1.2.0
- Node 6
- Angular-cli 1.4.3
- Gradle, 4.2.1

---
## version 1.0.1
fix with yarn copy instruction, so original Dockerfile can be build successfully 

Docker image for gradle &amp; angular 2 based on [gradle:4.2.1-jdk8 image](https://github.com/keeganwitt/docker-gradle/blob/2d38bdd0ca754b0ee54ad29a483778fd84bfcbe4/jdk8/Dockerfile) & [node:6 image](https://github.com/nodejs/docker-node/blob/001cfa3930ef8fb02865daaecbe35a3822bec15c/6.11/Dockerfile)

### Versions in 1.0.1
- Node 6
- Angular-cli 1.4.3
- Gradle, 4.2.1

---
## version 1.0.0
Base version from previous [docker-gradle-angular2](https://github.com/pesoklp13/docker-gradle-angular2) 

Docker image for gradle &amp; angular 2 based on [gradle:4.2.1-jdk8 image](https://github.com/keeganwitt/docker-gradle/blob/2d38bdd0ca754b0ee54ad29a483778fd84bfcbe4/jdk8/Dockerfile) & [node:6 image](https://github.com/nodejs/docker-node/blob/001cfa3930ef8fb02865daaecbe35a3822bec15c/6.11/Dockerfile)

### Versions in 1.0.0
- Node 6
- Angular-cli 1.4.3
- Gradle, 4.2.1

## License
The code is available under the [MIT License](https://github.com/FrontiaNET/m2m-docker/blob/master/LICENSE).
