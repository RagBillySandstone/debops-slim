FROM debian:jessie-slim

ENV DEBOPS_HOME /home/debops

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
    apt-get install --no-install-recommends -y \
    apt-utils \
    ansible \
    openssh-client \
    python-netaddr \
	  python-ldap \
	  python-passlib \
	  uuid-runtime \
    git \
	  encfs \
    python-pip && \
    pip install debops \
    && rm -rf /var/lib/apt/lists/*

ADD debops.cfg /etc
RUN debops-update

ADD entrypoint.sh .

ENTRYPOINT ["/entrypoint.sh"]




VOLUME $DEBOPS_HOME
WORKDIR $DEBOPS_HOME
