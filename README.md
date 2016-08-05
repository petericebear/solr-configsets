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
 
Getting started with Docker
---------------------------

For getting started quickly with SOLR and Docker I added a Dockerfile wich can create a new docker image with the configsets of this repository. Download or clone this repository to your harddrive then build a new Docker image with the following command.
 
```bash
docker build -t solr_configsets .
```

This will create a new Docker image named 'solr_configsets' based on SOLR 6.1 and copies the configsets folders of the repository. You can verify this by running 'docker images' in your terminal.
You can now start this image by running a new container at the default port 8983.

```bash
docker run -d -p 8983:8983 --name solrserver solr_configsets
```

The SOLR server is now started and you can make a new core with one of the configsets.

```bash
docker exec -it --user=solr solrserver bin/solr create_core -c collection1 -d bare_minimal
```

You can set collection1 as your own choosing like 'name_of_site'. With the -d parameter you can give the name of the folder for the configset.
If you go to http://DOCKER_MACHINEIP:8983/solr/ you can see the started SOLR server with the newly created core with given configset.

Check out my blog items about SOLR
----------------------------------
In a series of blog posts I will try to explain more about SOLR and the PHP library Solarium.

- [PHP Solarium Multi-Select facets with SOLR](http://petericebear.github.io/php-solarium-multi-select-facets-20160720/)
- [How to use PHP solarium in a Laravel project](http://petericebear.github.io/laravel-php-solarium-integration-20160725/)

Questions?
----------
Do you have questions or some feedback? Let me know! You can follow and reach me on [twitter](https://www.twitter.com/petericebear)