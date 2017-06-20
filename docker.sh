#/bin/bash

sudo service docker stop
sudo docker daemon --dns=8.8.8.8 # &> /dev/null
