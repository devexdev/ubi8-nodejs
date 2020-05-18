FROM registry.access.redhat.com/ubi8/ubi

RUN yum upgrade -y \
    && curl -sL https://rpm.nodesource.com/setup_12.x | bash - \
    && yum install -y nodejs \
    && useradd admin \
    && yum clean -y all
    && chown -R admin:admin /usr/local/lib/node_modules

USER admin
WORKDIR /home/admin
