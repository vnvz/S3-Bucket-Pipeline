#!/bin/bash
nomeApp="helloreact"
cd /appdir
npm install

sudo supervisord
sudo supervisorctl start $nomeApp
