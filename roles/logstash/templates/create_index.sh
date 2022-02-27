#! /bin/bash

curl -XPOST "http://localhost:9200/.kibana/_doc/index-pattern:logstash" -H 'Content-Type: application/json' -d'
{
  "type" : "index-pattern",
  "index-pattern" : {
    "title": "logstash*",
    "timeFieldName": "execution_time"
  }
}'
