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

Puts data in /data, mount this for persistent data.

    docker run -d -p 9200:9200 -p 9300:9300 -v ~/elasticsearch:/data my_es
