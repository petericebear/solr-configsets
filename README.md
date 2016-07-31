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
- laravel_scout
    This schema will be the placeholder for Laravel Scout. (Soon)
- job_board  
    Soon.
- travel_site  
    Soon.
- wordpress  
    Soon.

I will add some more configurations for some branches in the future. These are based on a managed-schema so you can add or remove field after creation in the admin panel.
    
    
How to use these configuration sets
-----------------------------------

When you install SOLR 6.1.0 to your server the default location of the configsets is '/opt/solr/server/solr/configsets/'. You can clone this repository into that folder to make use of all these configuration sets. If you want to use a single set, just download a single folder into the default location. 

If you login to the server as the user solr you can run the following command to create a new SOLR core with a given configset folder.

```bash
/opt/solr/bin/solr create -c CORE_NAME -d CONFIG_SET_FOLDER_NAME
```

If all went successfully you will see some JSON output with the newly created core with the given name. The core can be administered with the REST API or admin panel to add or remove fields to the core. 


Check out my blog items about SOLR
----------------------------------
In a series of blog posts I will try to explain more about SOLR and the PHP library Solarium.

- [PHP Solarium Multi-Select facets with SOLR](http://petericebear.github.io/php-solarium-multi-select-facets-20160720/)
- [How to use PHP solarium in a Laravel project](http://petericebear.github.io/laravel-php-solarium-integration-20160725/)

Questions?
----------
Do you have questions or some feedback? Let me know! You can follow and reach me on [twitter](https://www.twitter.com/petericebear)