#! /bin/sh
cd /src
git pull
npm update
npm run build
/usr/local/bin/hugo --source="/src" --destination="/output"
