#!/bin/bash

display_container()
{
    clear
    docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Ports}}"
    echo ""
}

clear

until [ "$NUM" == "q" ]
do
    # View
    echo -e "
[docker-compose manage]
 1) create centos7 + php7 + nginx + mysql + mailcatcher
 2) create centos6 + php5.6 + nginx + mysql + mailcatcher
st) stop all container
de) delete all container
ps) display all container
"
    read -p "Enter your choice: " NUM
    case $NUM in
    1)
        docker-compose up -d imdock-mysql imdock-cnp7 imdock-mailcatcher
        exit;
    ;;
    2)
        docker-compose up -d imdock-mysql imdock-cnp56 imdock-mailcatcher
        exit;
    ;;
    st)
        docker-compose stop
        exit;
    ;;
    de)
        docker-compose down
        exit;
    ;;
    ps)
        display_container
    ;;
    q)
        exit;
    ;;
    *)
        echo ">> Please keyin true option" && exit ;;esac
done