FROM ubuntu:14.04
MAINTAINER tomokokawase "zhanghaoyang.tomoko@bytedance.com"
ENV REFRESHED_AT 2019-02-17
# Add custom china source
RUN cd /etc/apt/ && sed -i 's/^\(deb\|deb-src\) \([^ ]*\) \(.*\)/\1 http:\/\/mirrors.aliyun.com\/ubuntu \3/' sources.list
# 对所有选项选是, 不输出信息
RUN apt-get -qq --force-yes update
RUN apt-get -yqq install software-properties-common
RUN sudo apt-add-repository ppa:brightbox/ruby-ng && apt-get update
RUN apt-get install -yqq ruby2.4 ruby2.4-dev build-essential redis-tools
RUN cd /usr/bin/ \
    && ls \
    && ln -sf ruby2.4 ruby && ln -sf gem2.4 gem && ln -sf erb2.4 erb && ln -sf irb2.4 irb && ln -sf rake2.4 rake && ln -sf rdoc2.4 rdoc && ln -sf testrb2.4 testrb
RUN ruby -v
RUN gem install rack -v 1.6.11
RUN gem sources --add https://gems.ruby-china.com/ --remove http://rubygems.org/ && gem sources -l
RUN gem install --no-rdoc --no-ri rack-protection sinatra json redis
RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webaapp/bin/webapp"]
