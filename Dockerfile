FROM centos:6
# Maintainer
# ----------
MAINTAINER babim <babim@matmagoc.com>

RUN rm -f /etc/motd && \
    echo "---" > /etc/motd && \
    echo "Support by Duc Anh Babim. Contact: babim@matmagoc.com" >> /etc/motd && \
    echo "---" >> /etc/motd && \
    touch "/(C) Babim"
    
RUN yum install locales wget nano iputils -y && yum install epel-release -y && \
    yum clean all

ENV LC_ALL en_US.UTF-8
# Set timezone to VN
ENV TZ Asia/Ho_Chi_Minh
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone