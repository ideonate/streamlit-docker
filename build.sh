#!/bin/bash

cd "${0%/*}"

cd streamlit-base

docker build -t ideonate/streamlit-base .


cd ../streamlit-single

docker build -t ideonate/streamlit-single .



cd ../streamlit-launchpad

docker build -t ideonate/streamlit-launchpad .
