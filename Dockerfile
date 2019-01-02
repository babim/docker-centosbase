FROM centos:7
# Maintainer
# ----------
MAINTAINER babim <babim@matmagoc.com>

RUN rm -f /etc/motd && \
    echo "---" > /etc/motd && \
    echo "Support by Duc Anh Babim. Contact: babim@matmagoc.com" >> /etc/motd && \
    echo "---" >> /etc/motd && \
    touch "/(C) Babim"
    
RUN yum install locales wget nano iputils openssh-server -y && yum install epel-release -y && \
    yum clean all

RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_ecdsa_key && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config

ADD runssh.sh /usr/sbin/runssh.sh
RUN chmod +x /usr/sbin/runssh.sh

ENV AUTHORIZED_KEYS **None**

EXPOSE 22
CMD ["/usr/sbin/runssh.sh"]

ENV LC_ALL en_US.UTF-8
ENV TZ Asia/Ho_Chi_Minh
