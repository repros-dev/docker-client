FROM cirss/repro-parent:latest

COPY exports /repro/exports

ADD ${REPRO_DIST}/boot-setup /repro/dist/
RUN bash /repro/dist/boot-setup

USER repro

RUN repro.require docker-client exports

CMD  /bin/bash -il
