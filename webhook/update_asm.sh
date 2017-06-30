#! /bin/sh
cd /src
git pull
npm install
hugo --source="/src" --destination="/output"
