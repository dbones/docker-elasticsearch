FROM dockerfile/elasticsearch

ENV ES_VERSION 1.5.2

RUN \
  cd /tmp && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ES_VERSION.tar.gz && \
  tar xvzf elasticsearch-$ES_VERSION.tar.gz && \
  rm -f elasticsearch-$ES_VERSION.tar.gz && \
  mv /tmp/elasticsearch-$ES_VERSION /opt/elasticsearch

RUN /opt/elasticsearch/bin/plugin -v -i elasticsearch/marvel/1.3.1
RUN /opt/elasticsearch/bin/plugin -v -i lmenezes/elasticsearch-kopf/v1.5.2
RUN /opt/elasticsearch/bin/plugin -v -i mobz/elasticsearch-head
RUN /opt/elasticsearch/bin/plugin -v -i royrusso/elasticsearch-HQ

VOLUME ["/data"]

ADD config/elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml

WORKDIR /data

CMD ["/opt/elasticsearch/bin/elasticsearch"]

EXPOSE 9200
EXPOSE 9300
