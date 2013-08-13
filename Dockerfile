FROM centos
MAINTAINER Sandro Munda <sandro@munda.me>

RUN touch /etc/sysconfig/network

ADD ./comodit.repo /etc/yum.repos.d/comodit.repo
RUN yum clean all

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum install comodit-agent -y

ADD ./start.sh /tmp/start.sh
