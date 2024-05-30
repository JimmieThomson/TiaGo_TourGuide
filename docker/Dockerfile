FROM python:3.10-slim-buster
WORKDIR /usr/src/app
RUN apt update && apt -y upgrade
RUN apt update && apt install -y software-properties-common
RUN apt update && apt install -y libasound2-dev
RUN apt update && apt install -y alsa-utils
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
CMD tail -f /dev/null