#!/bin/bash

export LQB_HOME=/usr/local/liquibase
export JDBC_DRIVER=$(pwd)/mysql-jdbc.jar
export CHANGE_LOG_DIR=~/workspace/wootwoot/grails-app/migrations
export JDBC_URL=jdbc:mysql://192.168.99.100:3306/wootwoot-dev
export JDBC_USER=root
export JDBC_PASS=
export LOG_LEVEL=info


cd $CHANGE_LOG_DIR

$LQB_HOME/liquibase --driver=com.mysql.jdbc.Driver \
     --classpath=$JDBC_DRIVER \
     --changeLogFile=changelog.xml \
     --url="$JDBC_URL" \
     --username=$JDBC_USER \
     --password=$JDBC_PASS \
     --logLevel=$LOG_LEVEL \
     migrate

cd -
