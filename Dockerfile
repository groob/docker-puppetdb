FROM debian:wheezy
ADD https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb /puppetlabs-release-wheezy.deb
RUN dpkg -i puppetlabs-release-wheezy.deb && apt-get update && apt-get install -y \
  puppetdb
COPY jetty.ini /etc/puppetdb/conf.d/jetty.ini
COPY docker-entrypoint.sh /docker-entrypoint.sh

VOLUME ["/etc/puppetdb/ssl"]
ENTRYPOINT ["/docker-entrypoint.sh"]

