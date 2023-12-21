#!/bin/bash
nomeApp="helloreact"
cd /appdir
npm install

process=`sudo lsof -i :9001`
pid=`echo $process | grep -oP '\b\d+\b' | head -n 1`
sudo kill -9 $pid

sudo supervisord
sudo supervisorctl start $nomeApp
