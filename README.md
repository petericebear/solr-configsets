SOLR configsets
===============

SOLR 6.1.0 is delivered with a three default configsets. But for quick start with minimal fields they are very bold to start with.
This is the reason why I created this repository for sharing some example configsets to get started with SOLR quickly.

Configuration sets descriptions
-------------------------------

Every configset has a is designed for a specific branche to get started quickly or to start quickly fresh. See the list below for the description per set.

- bare_minimal
    This schema only has the basic field types of only an id and _version_ field.
- car_portal
    This schema is for a used/new cars portal.
- job_board
    Soon.
- travel_site
    Soon.
- wordpress
    Soon.

I will add some more configurations for some branches in the future. These are based on a managed-schema so you can add or remove field after creation in the admin panel.
    
    
How to use these configuration sets
-----------------------------------

As the user solr you can run the following command to create a new Collection with a given configset.

```bash
/opt/solr/bin/solr create -c COLLECTION_NAME -d CONFIG_SET_FOLDER_NAME
```


Check out my blog items about SOLR
----------------------------------
In a series of blog posts I will try to explain more about SOLR.

- [PHP Solarium Multi-Select facets with SOLR](http://petericebear.github.io/php-solarium-multi-select-facets-20160720/)
- [How to use PHP solarium in a Laravel project](http://petericebear.github.io/laravel-php-solarium-integration-20160725/)

Contact
-------
You can contact me if you need a good provider for high-available SOLR hosting.

Disclaimer
----------
These configsets are by no means a production blueprint, so use in production at your own risk.