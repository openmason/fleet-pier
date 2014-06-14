# all minimum required utilities and daemons
#
# Usage:
# docker build -t openmason/fleet-pier .
#
#
FROM openmason/fleet-base:latest
MAINTAINER el aras<openmason@gmail.com>

# Any ppa repositories go here

# required dev packages
RUN \
  apt-get update; \
  apt-get install -yq \
    libevent-dev \
    libzmq-dev \
    --no-install-recommends; \
  apt-get clean

# required scripting/daemon packages
RUN \
  apt-get update; \
  apt-get install -yq \
    nodejs \
    --no-install-recommends; \
  apt-get install -yq \
    openssh-server \
     --no-install-recommends; \
  pip install --upgrade circus circus-web; \
  mkdir /var/run/sshd; \
  apt-get clean
