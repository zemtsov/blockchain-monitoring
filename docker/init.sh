#!/usr/bin/env bash

cd /

./init_grafana.sh &
./init_influx.sh &
java -Xdebug -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n -jar blockchain-monitoring.jar
