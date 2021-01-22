FROM bentolor/docker-dind-awscli

WORKDIR /root/.docker/cli-plugins

RUN apk --no-cache add \
        curl \
    && curl -sL https://github.com/docker/buildx/releases/download/v0.5.1/buildx-v0.5.1.linux-amd64 -o docker-buildx \
    && chmod a+x ~/.docker/cli-plugins/docker-buildx