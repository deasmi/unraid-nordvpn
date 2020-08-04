FROM ubuntu:18.04

COPY nordvpn-release_1.0.0_all.deb /tmp
RUN apt-get update
RUN apt-get install -y /tmp/nordvpn-release_1.0.0_all.deb ca-certificates
RUN apt-get update
RUN apt-get install -y nordvpn

ENTRYPOINT ["/usr/sbin/nordvpnd","&"]



