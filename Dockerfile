FROM centos:7
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN yum install -y epel-release && \
    yum install -y asciidoctor && \
    gem install coderay && \
    yum clean all

RUN mkdir -p /doc
VOLUME /doc
WORKDIR /doc

ENTRYPOINT [ "asciidoctor" ]
