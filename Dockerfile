FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.8

USER root

COPY register_remote_repo.sh /
COPY recover-progress.sh /

RUN chmod +x /register_remote_repo.sh
RUN chmod +x /recover-progress.sh

USER elasticsearch
