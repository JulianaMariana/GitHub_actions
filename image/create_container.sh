#!/bin/bash

docker run --workdir=/workspaces/src \
    --env PYTHONPATH=/workspaces/src \
    --volume=$DOCKER_DIR/..:/workspaces/src \
    -it github_actions:latest /bin/bash
