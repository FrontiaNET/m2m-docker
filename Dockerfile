# ----------------------------------------------------
# multi-stage build NODE
# ----------------------------------------------------
# installing node:6 (nodejs, npm, yarn)
FROM node:6 as NODE_SOURCE

# installing angular-cli globally
RUN echo "Installing angular-cli for global use"
RUN npm install -g @angular/cli@1.4.3

## prepare yarn files to copy based on YARN_VERSION from source image to be successfully transfered to final image
# use /tmp dir
RUN echo "YARN_VERSION=$YARN_VERSION" \
    && ls -la /opt \
    && ls -la /opt/yarn-v$YARN_VERSION \
    && cp -a /opt/yarn-v$YARN_VERSION /tmp/yarn \
    && ls -la /usr/local/bin/yarn \
    && ls -la /usr/local/bin/yarnpkg \
    && ls -la /usr/local/bin/node \
    && ls -la /usr/local/bin/nodejs

# make copy script to be used in target container, because ENV variables are not accessible in target container
RUN echo "#!/bin/sh" > /tmp/copy-yarn.sh \
    && echo "ls -la /tmp" >> /tmp/copy-yarn.sh \
    && echo "cp -a /tmp/yarn /opt/yarn-v$YARN_VERSION" >> /tmp/copy-yarn.sh \
    && echo "rm -rf /tmp/yarn" >> /tmp/copy-yarn.sh \
    && chmod 755 /tmp/copy-yarn.sh \
    && cat /tmp/copy-yarn.sh

# ----------------------------------------------------
# multi-stage build GRADLE
# ----------------------------------------------------
# installing gradle:4.2.1 (java jdk8, gradl 4.2.1)
FROM gradle:4.2.1-jdk8

# copy yarn files from node container
COPY --from=NODE_SOURCE /tmp/yarn /tmp/yarn
# copy prepared script with yarn version value
COPY --from=NODE_SOURCE /tmp/copy-yarn.sh /tmp/copy-yarn.sh
# run as root
USER root
# copy yarn files according to version folder prepared in script in node container
RUN /tmp/copy-yarn.sh
# switxh back gradle user
USER gradle

# check if gradle is properly installed
RUN echo "Testing gradle installation" && gradle --version

# merge data from previous image
COPY --from=NODE_SOURCE /usr/local/lib/node_modules /usr/local/lib/node_modules/
COPY --from=NODE_SOURCE /usr/local/bin /usr/local/bin

# list copied files from node container
RUN ls -la /opt
RUN ls -la /usr/local/bin/yarn
RUN ls -la /usr/local/bin/yarnpkg
RUN ls -la /usr/local/bin/node
RUN ls -la /usr/local/bin/nodejs

# check if node is working properly after merge
RUN echo "Testing node installation" && node -v && npm -v

# check angular-cli installation
RUN ng --version
