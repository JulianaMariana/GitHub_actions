#!/bin/bash

# Build course image
docker build \
    -t github_actions:latest \
    -f Dockerfile .
