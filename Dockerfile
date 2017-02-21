FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install java_properties --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["properties2yaml"]
CMD ["--help"]
