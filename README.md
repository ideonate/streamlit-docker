
### Docker image for streamlit-launchpad

Docker image for [Streamlit](https://streamlit.io/).

Uses [streamlit-launchpad](https://github.com/ideonate/streamlit-launchpad/) to display a list of any .py apps mounted in the /app folder.

```
docker run -p 8888:8888 -v ~/streamlit-examples:/app ideonate/streamlit-docker
```

