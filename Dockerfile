FROM registry.access.redhat.com/ubi7/ubi

RUN yum upgrade -y \
    && curl -sL https://rpm.nodesource.com/setup_14.x | bash - \
    && yum install -y nodejs zip unzip \
    && useradd admin \
    && yum clean -y all

USER admin
WORKDIR /home/admin
