SmartDocker By PHPDocker.io generated environment
==================================

#How to run#

  * Start Sample: `docker-compose up -d smartdocker-php56-fpm smartdocker-php7-fpm smartdocker-nginx smartdocker-mysql smartdocker-mailhog`

##Services exposed outside your environment##

You can access your application via **`localhost`**, if you're running the containers directly, or through **`192.168.33.141`** when run on a vm. nginx and mailhog both respond to any hostname, in case you want to add your own hostname on your `/etc/hosts` 

Service|Address outside containers|Address outside VM
------|---------|-----------
Nginx|[localhost:8080](http://localhost:8080)|[192.168.33.141](http://192.168.33.141)
Mailhog web interface|[localhost:8081](http://localhost:8081)|[192.168.33.141:81](http://192.168.33.141:81)

##Hosts within your environment##

You'll need to configure your application to use any services you enabled:

Service|Hostname|Port number
------|---------|-----------
php-fpm56|smartdocker-php56-fpm|9000
php-fpm7|smartdocker-php7-fpm|9000
MySQL|smartdocker-mysql|3306 (default)
Postgres|smartdocker-postgres|5432 (default)
Memcached|smartdocker-memcached|11211 (default)
Redis|smartdocker-redis|6379 (default)
SMTP (Mailhog)|smartdocker-mailhog|1025 (default)

#Docker compose cheatsheet#

**Note 1:** you need to cd first to where your docker-compose.yml file lives

**Note 2:** if you're using Vagrant, you'll need to ssh into it first

  * Start containers in the background: `docker-compose up -d`
  * Start containers on the foreground: `docker-compose up`. You will see a stream of logs for every container running.
  * Stop containers: `docker-compose stop`
  * Kill containers: `docker-compose kill`
  * View container logs: `docker-compose logs`
  * Execute command inside of container: `docker exec -it smartdocker-php-fpm COMMAND` where `COMMAND` is whatever you want to run. For instance, `/bin/bash` to open a console prompt.
