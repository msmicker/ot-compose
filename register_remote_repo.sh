#!/usr/bin/env bash

curl -XPUT "http://elasticsearch:9200/_snapshot/17.12" --data '{"type": "url","settings": {"url": "https://storage.googleapis.com/open-targets-data-releases/17.12/17.12_snapshot/index-0"}}'
curl -XPOST "http://elasticsearch:9200/_snapshot/17.12/curator-20180126111418/_restore" -d '{"ignore_unavailable": "true","include_global_state": "false"}'