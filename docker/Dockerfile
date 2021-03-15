FROM alpine:3.12

RUN apk update
RUN apk add npm
RUN /bin/sh -c 'mkdir -p /root/Workspace/personal-memex-ui'
# static container environment variables, not env vars that change per container
RUN echo 'UI_DIR=/root/Workspace/personal-memex-ui' > '/root/env'
COPY 'src/' '/root/Workspace/personal-memex-ui/src/'
COPY '*.json' '/root/Workspace/personal-memex-ui/'
COPY 'browserslist' '/root/Workspace/personal-memex-ui'

COPY 'docker/entrypoint.sh' '/entrypoint.sh'
RUN chmod a+x /entrypoint.sh
ENTRYPOINT '/entrypoint.sh'
