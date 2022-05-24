# Build Stage:
FROM golang:1.18

## Install build dependencies.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential

## Add Source Code
ADD . /ecs-run-task
WORKDIR /ecs-run-task

## Build Step
RUN make