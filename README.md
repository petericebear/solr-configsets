SOLR configsets
===============

SOLR 6.1.0 is delivered with a three default configsets. But for quick start with minimal fields they are very bold to start with.
This is the reason why I created this repository for sharing some example configsets to get started with SOLR quickly. 

In this repository I share some of my SOLR configurations for the Dutch language. Feel free to make Pull Request for other languages or additions.

Configuration sets descriptions
-------------------------------

Every 

- bare_minimal
    This schema only has the basics of fieldtypes with only an id and _version_ field.
    
    
How to use these configuration sets
-----------------------------------

As the user solr you can run the following command to create a new Collection with a given configset.

```bash
/opt/solr/bin/solr create -c COLLECTION_NAME -d CONFIG_SET_FOLDER_NAME
```