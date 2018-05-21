#! /bin/sh
cd /src
git pull
npm update
/usr/local/bin/hugo --source="/src" --destination="/output"
