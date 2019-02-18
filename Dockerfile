FROM ubuntu:14.04
MAINTAINER tomokokawase "zhanghaoyang.tomoko@bytedance.com"
ENV REFRESHED_AT 2019-02-14
RUN apt-get -qq update && apt-get install -y nginx
RUN echo 'Hi, I am your container' > /usr/share/nginx/html/index.html
ONBUILD ADD Dockerfile /usr/local/
ONBUILD RUN echo "我好像被用作基础镜像了" > /usr/local/myfile$(date +%Y%m%d).txt
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]

