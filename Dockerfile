FROM registry.access.redhat.com/ubi8/nodejs-14

USER root
RUN yum upgrade -y \
    && yum install -y zip unzip \
    && useradd admin -g root \
    && yum clean -y all

USER admin
WORKDIR /home/admin
