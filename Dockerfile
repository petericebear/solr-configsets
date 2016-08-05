FROM solr:6.1
MAINTAINER Peter Steenbergen "peter@3ws.nl"

COPY bare_minimal /opt/solr/server/solr/configsets/bare_minimal
COPY car_portal /opt/solr/server/solr/configsets/car_portal 
USER root
RUN chown -R solr:solr /opt/solr/server/solr/configsets
USER solr
CMD ["/opt/solr/bin/solr", "-f"]
