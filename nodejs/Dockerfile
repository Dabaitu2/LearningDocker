FROM tomokokawase/ubuntu:16.04
MAINTAINER tomokokawase <zhanghaoyang.tomoko@bytedance.com>
ENV REFRESHED_AT 2019-02-17
RUN apt-get -qq update
RUN apt-get -qq install nodejs npm
RUN mkdir -p /var/log/nodeapp

ADD nodeapp /opt/nodeapp/

WORKDIR /opt/nodeapp
RUN npm install

VOLUME [ "/var/log/nodeapp" ]

EXPOSE 3000

ENTRYPOINT [ "nodejs", "server.js" ]
