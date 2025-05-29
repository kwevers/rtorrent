FROM registry.fedoraproject.org/fedora-minimal:42

RUN set -x \
  && microdnf -y install rtorrent \
  && mkdir /etc/rtorrent

ENTRYPOINT ["/usr/bin/rtorrent"]
CMD ["-n", "-o", "import=/etc/rtorrent/rtorrent.rc"]
