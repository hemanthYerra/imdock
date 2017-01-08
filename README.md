imdock
====================================================

#How to run#

  * Start Sample(check you in docker-project dir): `sh im.sh`

#Docker compose cheatsheet#

**Note 1:** you need to cd first to where your docker-compose.yml file lives

**Note 2:** if you're using Vagrant, you'll need to ssh into it first

  * Start containers in the background: `docker-compose up -d`
  * Start containers on the foreground: `docker-compose up`. You will see a stream of logs for every container running.
  * Stop containers: `docker-compose stop`
  * Kill containers: `docker-compose kill`
  * View container logs: `docker-compose logs`
  * Execute command inside of container: `docker exec -it imdock-php-fpm COMMAND` where `COMMAND` is whatever you want to run. For instance, `/bin/bash` to open a console prompt.

## PHP Extend:
- [x] PHP5.6
  - [x] mbstring
  - [x] mcrypt
  - [x] php-dom, php-domxml, php-wddx, php-xsl
  - [x] php-mysqli, php_database
  - [ ] mongodb
  - [ ] redis
  - [ ] pgsql
  - [x] php-mssql
  - [x] php56w-pdo_sqlite, php56w-sqlite3
  - [ ] apcu
  - [x] gd
  - [ ] imap  
  - [x] imagick
  - [x] zend-opcache
  - [x] memcache
  - [x] xdebug
  
- [x] PHP7
  - [x] mbstring
  - [x] mcrypt
  - [x] php-dom, php-domxml, php-wddx, php-xslxml, xmlrpc
  - [x] php-mysqli, php_database
  - [x] mongodb
  - [x] redis
  - [x] pgsql
  - [ ] php-mssql  
  - [x] php71w-pdo_sqlite, php71w-sqlite3
  - [x] apcu
  - [x] gd
  - [x] imap
  - [ ] imagick
  - [x] zend-opcache
  - [ ] memcache
  - [ ] xdebug
