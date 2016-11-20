FROM elasticsearch

RUN /usr/share/elasticsearch/plugin install royrusso/elasticsearch-HQ
RUN /usr/share/elasticsearch/plugin install mobz/elasticsearch-head
RUN /usr/share/elasticsearch/plugin install lmenezes/elasticsearch-kopf
RUN /usr/share/elasticsearch/plugin install elasticsearch/marvel
