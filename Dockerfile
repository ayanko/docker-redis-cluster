FROM redis:latest

RUN apt-get update && apt-get install -y supervisor

RUN /bin/bash -c 'mkdir -p /cluster/data/{0..5}'

COPY cluster-node cluster-setup /usr/local/bin/
COPY supervisord.conf /usr/local/etc/

ENTRYPOINT ["/usr/bin/supervisord", "-c", "/usr/local/etc/supervisord.conf"]
