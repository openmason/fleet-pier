# all minimum required utilities and daemons
#
# Usage:
# docker build -t openmason/fleet-pier
#
#
FROM openmason/fleet-base:latest
MAINTAINER el aras<openmason@gmail.com>

# required scripting packages
RUN \
  apt-get update;              \
  apt-get install -yq          \
    nodejs                     \
    --no-install-recommends;   \
  apt-get install -yq openssh-server --no-install-recommends; \
  mkdir /var/run/sshd;         \
  apt-get clean
