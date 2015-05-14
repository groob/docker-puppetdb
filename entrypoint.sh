#!/bin/sh

/usr/bin/java -cp /usr/share/puppetdb/puppetdb.jar clojure.main -m com.puppetlabs.puppetdb.core services -c /etc/puppetdb/conf.d
