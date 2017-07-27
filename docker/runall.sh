#!/bin/bash
set  -e
# Stop & Remove All Dockers
for inst in `docker ps -a | awk '{print $1}' | egrep -v 'd5c9e5830be8|CONTAINER'`
   do
      echo working with $inst
      docker stop $inst
      [ $? -ne 0 ] && echo something went wrong with $inst && continue
      docker rm $inst
      echo
      echo
 done

# Build & Run All Dockers
cd /home/jenkins/workspace/RC-DOCKER/docker
for dfile in `ls Dockerfile.*`
 do
      osname=`echo $dfile | awk -F\. '{print $2}'`
      echo building $osname
      docker build -t $osname --file $dfile .
      [ $? -ne 0 ] && echo something went wrong && continue
      echo running $osname
#      docker run -dit $osname /bin/bash
#      echo
 done

