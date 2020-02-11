FROM python:3.7.2-slim
LABEL maintainer="Dan Lester <dan@ideonate.com>"

EXPOSE 8888

WORKDIR /app

RUN pip install --upgrade pip
RUN pip install streamlit
RUN pip install streamlit-launchpad

ENTRYPOINT [ "streamlit-launchpad"]
CMD ["/app"]

