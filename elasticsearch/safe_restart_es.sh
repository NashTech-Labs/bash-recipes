#!/bin/bash

#Perform a rolling restart for ES disable
curl -XPUT localhost:9200/_cluster/settings --data ' {"transient":{"cluster.routing.allocation.enable": "none"}}'

echo "stopping ES"
sudo service elasticsearc stop
# shut down a node. for ES < 1.7
#curl -XPOST localhost:9200//_cluster/nodes/_local/_shutdown

#Perform maintenace steps:


# enable back the shard allocation once node is back.
curl -XPUT localhost:9200/_cluster/settings --data ' {"transient":{"cluster.routing.allocation.enable": "all"}}'

# Elasticsearch re-route shards 
curl -XPOST 'localhost:9200/_cluster/reroute' -d '{
    "commands": [{
        "move": {
            "index": "<index-name>",
            "shard": <count-of-shard>,
            "to_node": "<which-node>"
        }
    }]
}'

# more verbose version
curl -X POST "localhost:9200/_cluster/reroute?pretty" -H 'Content-Type: application/json' -d'
{
    "commands" : [
        {
          "allocate_replica" : {
                "index" : "<index-name>", 
                "shard" : <count-shards>,
                "node" : "<node-where-we-want-relocate>"
          }
        }
    ]
}'

