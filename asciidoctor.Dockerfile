FROM centos:7
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN yum install -y epel-release && \
    yum install -y asciidoctor && \
    gem install coderay && \
    yum clean all

RUN mkdir -p /docs
VOLUME /docs
WORKDIR /docs

ENTRYPOINT [ "asciidoctor" ]
