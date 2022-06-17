FROM cp.icr.io/cp/appc/ace-server-prod@sha256:f9b2b5e385f462d60a3fedf2aa7366b3bc304e971c89fafe6425cf2949a472c6

ENV LICENSE=accept

RUN mkdir -p /home/aceuser/initial-config/bars
COPY BARfiles/*.bar /home/aceuser/initial-config/bars

USER 0
ENV LICENSE accept
EXPOSE 7600
EXPOSE 7800

USER 1000