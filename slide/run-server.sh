#!/bin/sh
docker run -d -v `pwd`:/usr/share/nginx/html -p 8000:80 --name slide nginx

