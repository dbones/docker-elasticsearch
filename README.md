docker-elasticsearch
====================

Simple docker image for ElasticSearch.

Builds upon [dockerfile/elasticsearch](https://github.com/dockerfile/elasticsearch).
Uses ElasticSearch 1.3.4.

Installs the following plugins:
* head
* kopf
* elastic-HQ
* marvel


To run:

    docker build -t my_es .

    docker run -d -p 9200:9200 -p 9300:9300 my_es

Alternatively, mount /data for persistent data between restarts:

    docker run -d -p 9200:9200 -p 9300:9300 -v ~/elasticsearch:/data my_es
