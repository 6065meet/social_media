docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID 6065meet/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID 6065meet/$JOB_NAME:latest

docker push 6065meet/$JOB_NAME:$BUILD_ID

docker push 6065meet/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID 6065meet/$JOB_NAME:$BUILD_ID 6065meet/$JOB_NAME:latest
