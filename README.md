imdock
==================================

#How to run#

  * Start Sample: `docker-compose up -d imdock-mysql imdock-cnp56 imdock-mailhog`

##Services exposed outside your environment##

You can access your application via **`localhost`**, if you're running the containers directly, or through **`192.168.33.141`** when run on a vm. nginx and mailhog both respond to any hostname, in case you want to add your own hostname on your `/etc/hosts` 

##Hosts within your environment##

You'll need to configure your application to use any services you enabled:

#Docker compose cheatsheet#

**Note 1:** you need to cd first to where your docker-compose.yml file lives

**Note 2:** if you're using Vagrant, you'll need to ssh into it first

  * Start containers in the background: `docker-compose up -d`
  * Start containers on the foreground: `docker-compose up`. You will see a stream of logs for every container running.
  * Stop containers: `docker-compose stop`
  * Kill containers: `docker-compose kill`
  * View container logs: `docker-compose logs`
  * Execute command inside of container: `docker exec -it imdock-php-fpm COMMAND` where `COMMAND` is whatever you want to run. For instance, `/bin/bash` to open a console prompt.
