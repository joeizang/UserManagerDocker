ECHO BUILDING APPLICATION IMAGE/CONTAINER
docker build -t usermgrexpressmongo .

REM Setup bridge network for containers
ECHO SETTING UP CONTAINER COMMUNICATIONS
docker network create expressmongohub

REM Bring up APPLICATION & MONGODB containers
ECHO BRINGING UP APPLICATION & DATABASE CONTAINERS

docker run -d --network expressmongohub -v /%USERNAME%/mongocontainer/db:/data/db mongo
docker run -d --network expressmongohub usermgrexpressmongo