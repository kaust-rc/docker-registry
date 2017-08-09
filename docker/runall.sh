#!/bin/bash
set  -e
# Stop & Remove All Dockers
id
chmod o=rw /var/run/docker.sock
for inst in `docker ps -a | awk '{print $1}' | egrep -v '2161009001df|CONTAINER'|egrep -v '0efd18157cae|CONTAINER'`
   do
      echo working with $inst
      docker stop $inst
      [ $? -ne 0 ] && echo something went wrong with $inst && continue
      docker rm $inst
      echo
      echo
 done

# Build & Run All Dockers
cd /home/jenkins/workspace/Docker-Registry/docker
for dfile in `ls Dockerfile.*`
 do
      osname=`echo $dfile | awk -F\. '{print $2}'`
      echo building $osname
      docker build -t $osname --file $dfile .
      [ $? -ne 0 ] && echo something went wrong && continue
#     echo running $osname
#      docker run -dit $osname /bin/bash
#      echo
 done
for dfile in `ls Dockerfile.*`
 do
      osname=`echo $dfile | awk -F\. '{print $2}'`

        docker tag $osname 10.254.154.110/$osname
        docker push 10.254.154.110/$osname

done
