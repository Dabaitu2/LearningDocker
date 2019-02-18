FROM ubuntu:16.04
MAINTAINER tomokokawase <zhanghaoyang.tomoko@bytedance.com>
ENV REFRESHED_AT 2019-02-17

RUN cd /etc/apt/ && sed -i 's/^\(deb\|deb-src\) \([^ ]*\) \(.*\)/\1 http:\/\/mirrors.aliyun.com\/ubuntu \3/' sources.list
# 对所有选项选是, 不输出信息
RUN apt-get -yqq update