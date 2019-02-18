FROM ubuntu:16.04
MAINTAINER tomokokawase <zhanghaoyang.tomoko@bytedance.com>
ENV REFRESHED_AT 2019-02-17

RUN cd /etc/apt/ && sed -i 's/^\(deb\|deb-src\) \([^ ]*\) \(.*\)/\1 http:\/\/mirrors.aliyun.com\/ubuntu \3/' sources.list
# 对所有选项选是, 不输出信息
RUN apt-get -yqq update
RUN apt-get -yqq install software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng && apt-get update
RUN apt-get install -yqq ruby2.4 ruby2.4-dev build-essential redis-tools
RUN cd /usr/bin/ \
    && ls \
    && ln -sf ruby2.4 ruby && ln -sf gem2.4 gem && ln -sf erb2.4 erb && ln -sf irb2.4 irb && ln -sf rake2.4 rake && ln -sf rdoc2.4 rdoc && ln -sf testrb2.4 testrb
RUN ruby -v
RUN apt-get install -yqq ruby2.4 ruby2.4-dev make nodejs
RUN gem sources --add https://gems.ruby-china.com/ --remove http://rubygems.org/ && gem sources -l
RUN gem install --no-rdoc --no-ri jekyll -v 2.5.3

#指定数据卷
VOLUME [ "/data" ]
VOLUME [ "/var/www/html" ]
WORKDIR /data 
#设置工作目录

#编译后的文件位置
ENTRYPOINT [ "jekyll", "build", "--destination=/var/www/html" ]