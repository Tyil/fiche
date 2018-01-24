FROM busybox

LABEL maintainer "Patrick Spek <p.spek@tyil.work>"
LABEL version "1.0"

ENV HTTPS ""
ENV DOMAIN "localhost"
ENV PORT "9999"
ENV SLUG "4"
ENV BUFFER "8192"

ADD out/fiche /fiche
ADD files/run.sh /run.sh

EXPOSE 9999

VOLUME /data

CMD sh /run.sh
