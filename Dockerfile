FROM i386/centos:7
# Maintainer
# ----------
MAINTAINER babim <babim@matmagoc.com>

RUN yum install locales curl nano bash -y

# copyright and timezone
RUN curl -s https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/copyright.sh | bash