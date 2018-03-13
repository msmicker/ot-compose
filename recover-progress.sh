#!/usr/bin/env bash

curl -s http://elasticsearch:9200/_cat/recovery/ | grep 17.12