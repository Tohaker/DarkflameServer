FROM python:3.10-bullseye

WORKDIR /darkflame
COPY . ./

RUN apt update && apt upgrade
RUN apt install -y cmake gcc build-essential lsb-release

# Build server
RUN ./build.sh
