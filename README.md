docker-elasticsearch
====================

Simple docker image for ElasticSearch
Uses ElasticSearch 1.3.4.

To run:

    docker build -t my_es .

    docker run -d -p 9200:9200 -p 9300:9300 my_es

Puts data in /data, mount this for persistent data.

    docker run -d -p 9200:9200 -p 9300:9300 -v ~/elasticsearch my_es
