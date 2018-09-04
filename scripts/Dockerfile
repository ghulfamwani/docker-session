FROM centos:7.4.1708
# Install dependencies
RUN yum update -y
RUN yum install -y \
    git \
    curl \
    zip \
    unzip \
    wget

# Create fresh set of ssh keys
RUN yum install -y openssh-server epel-release
RUN mkdir -p /var/run/sshd
RUN \
    rm -f /etc/ssh/ssh_host_ecdsa_key && \
    rm -f /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -A

# Install required python packages
RUN yum install -y python-pip
RUN pip install --upgrade pip
RUN pip install Flask
RUN pip install Flask-SqlAlchemy
RUN mkdir -p /root/app/
WORKDIR /root/app/
RUN git clone https://github.com/ghulfamwani/docker-session.git
EXPOSE 22
EXPOSE 5000
COPY start_container.sh /usr/bin/start_container.sh
CMD ["start_container.sh"]
