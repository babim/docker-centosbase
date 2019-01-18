FROM babim/centosbase:6

RUN yum install -y wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh && \
    chmod 755 /option.sh && yum remove -y wget

RUN yum -y groupinstall "Desktop" "Desktop Platform" "X Window System" "Fonts" && \
    yum install gedit file-roller firefox nano iputils tigervnc-server -y && \
    yum clean all

# Define default command.
RUN echo '#!/bin/bash' > /startup.sh && \
    echo "rm -rf /tmp/.X*" >> /startup.sh && \
    echo "vncserver :1" >> /startup.sh && \
    echo 'if [ -f "/option.sh" ]; then /option.sh; fi' >> /startup.sh && \
    echo "sleep infinity" >> /startup.sh && chmod +x /startup.sh
CMD ["/startup.sh"]

# Expose ports.
EXPOSE 5901
