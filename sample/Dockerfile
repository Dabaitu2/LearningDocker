FROM ubuntu:14.04
MAINTAINER tomokokawase "zhanghaoyang.tomoko@bytedance.com"
ENV REFRESHED_AT 2019-02-17
# Add custom china source
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
ADD sources.list /etc/apt/
# 对所有选项选是, 不输出信息
RUN apt-get -qq --force-yes update && apt-get install --force-yes -qq nginx
# -p 若不存在，一次建立好多级目录
RUN mkdir -p /var/www/html/website
# .d的意思是目录
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf  /etc/nginx/nginx.conf
EXPOSE 80
