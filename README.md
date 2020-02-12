
# Docker images for Streamlit

Docker images for [Streamlit](https://streamlit.io/).

## ideonate/streamlit-launchpad

Uses [streamlit-launchpad](https://github.com/ideonate/streamlit-launchpad/) to display a list of any .py apps mounted in the /app folder.

```
docker run -p 8888:8888 -v ~/streamlit-examples:/app ideonate/streamlit-launchpad
```

## ideonate/streamlit-single

Runs the first .py script it finds in /app

```
docker run -p 8888:8888 -v ~/streamlit-examples:/app ideonate/streamlit-single
```

## ideonate/streamlit-base

Runs the script provided as a parameter

```
docker run -p 8888:8888 -v ~/streamlit-examples:/app ideonate/streamlit-base ./intro.py
```
