#!/bin/bash



docker run -t --net=host astefanutti/decktape reveal --size 1920x1080 http://localhost:8080 slides.pdf
docker cp $(docker ps -lq):slides.pdf .
docker rm $(docker ps -lq)
