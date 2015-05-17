#!/bin/bash
set -e

/usr/sbin/puppetdb-foreground

exec "$@"
