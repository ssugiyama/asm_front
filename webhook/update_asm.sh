#! /bin/sh
cd /src
git pull
/usr/local/bin/hugo --source="/src" --destination="/output"
