FROM dockerfile/elasticsearch

RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.0.tar.gz && \
  tar xvzf elasticsearch-1.4.0.tar.gz && \
  rm -f elasticsearch-1.4.0.tar.gz && \
  mv /tmp/elasticsearch-1.4.0 /opt/elasticsearch

RUN /opt/elasticsearch/bin/plugin -v -i elasticsearch/marvel/1.2.1
RUN /opt/elasticsearch/bin/plugin -v -i lmenezes/elasticsearch-kopf/v1.3.8
RUN /opt/elasticsearch/bin/plugin -v -i mobz/elasticsearch-head
RUN /opt/elasticsearch/bin/plugin -v -i royrusso/elasticsearch-HQ

VOLUME ["/data"]

ADD config/elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml

WORKDIR /data

CMD ["/opt/elasticsearch/bin/elasticsearch"]

EXPOSE 9200
EXPOSE 9300
