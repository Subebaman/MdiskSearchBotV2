# Python Based Docker
FROM python:latest

# Installing Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages
RUN pip3 install -U pip

# Copying Requirements
COPY requirements.txt /requirements.txt

# Installing Requirements
RUN cd /MdiskV2Bot
RUN pip3 install -U -r requirements.txt
RUN mkdir /MdiskV2Bot
WORKDIR /MdiskV2Bot
COPY start.sh /start.sh

# Running MessageSearchBot
CMD ["/bin/bash", "/start.sh"]
