BASEDIR=$(sudo docker inspect --format='{{ index .Volumes "/source" }}' source)/backend/

echo $BASEDIR

