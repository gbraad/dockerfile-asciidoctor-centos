FROM registry.gitlab.com/gbraad/asciidoctor-centos:latest
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN gem install asciidoctor-pdf --pre

RUN mkdir -p /docs
VOLUME /docs
WORKDIR /docs

ENTRYPOINT [ "asciidoctori-pdf" ]
