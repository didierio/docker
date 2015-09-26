#/bin/bash
sudo service docker stop

docker -d --dns=8.8.8.8 &> /dev/null
