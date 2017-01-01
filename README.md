imdock
==================================

#How to run#

  * Start Sample: `docker-compose up -d imdock-mysql imdock-cnp56 imdock-mailhog`

#Docker compose cheatsheet#

**Note 1:** you need to cd first to where your docker-compose.yml file lives

**Note 2:** if you're using Vagrant, you'll need to ssh into it first

  * Start containers in the background: `docker-compose up -d`
  * Start containers on the foreground: `docker-compose up`. You will see a stream of logs for every container running.
  * Stop containers: `docker-compose stop`
  * Kill containers: `docker-compose kill`
  * View container logs: `docker-compose logs`
  * Execute command inside of container: `docker exec -it imdock-php-fpm COMMAND` where `COMMAND` is whatever you want to run. For instance, `/bin/bash` to open a console prompt.
