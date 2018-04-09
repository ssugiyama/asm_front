#! /bin/sh
cd /src
git pull
npm install
/usr/local/bin/hugo --source="/src" --destination="/output"
