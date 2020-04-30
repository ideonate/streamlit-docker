#!/bin/bash

cd "${0%/*}"

dt=`date '+%Y%m%d%H%M%S'`

cd streamlit-base

docker build -t ideonate/streamlit-base:$dt .
docker tag ideonate/streamlit-base:$dt ideonate/streamlit-base:latest

cd ../streamlit-single

docker build -t ideonate/streamlit-single:$dt .
docker tag ideonate/streamlit-single:$dt ideonate/streamlit-single:latest


cd ../streamlit-launchpad

docker build -t ideonate/streamlit-launchpad:$dt .
docker tag ideonate/streamlit-launchpad:$dt ideonate/streamlit-launchpad:latest

