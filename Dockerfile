## container for creating whl files
## bind mount a dir so you can export the whl

FROM ubuntu:18.04

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/rsettlag" \
      maintainer="Robert Settlage <rsettlag@vt.edu>"

RUN apt update \
  && apt install -y python3-dev python3-pip curl g++ unzip zip tar openjdk-11-jdk \
  && pip3 install -U pip six numpy wheel setuptools mock 'future>=0.17.1' \
  && pip3 install -U keras_applications --no-deps \
  && pip3 install -U keras_preprocessing --no-deps \
  && curl https://bazel.build/bazel-release.pub.gpg | apt-key add -

RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt update \
  && apt install -y bazel bazel-1.2.1


