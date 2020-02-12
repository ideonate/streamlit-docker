#!/bin/bash

export appname=`ls /app | head -1`

if [ -z "$appname" ]
then
      echo "There are no .py scripts in /app so cannot run any"
else
      echo "Running $appname"
      streamlit run --server.port 8888 --server.headless True --server.runOnSave True --server.enableCORS False "/app/$appname"
fi
