#!/usr/bin/env bash

# paths to data files
COMMON=../common

# ------------------------------------------------------------------------------

bash_cell 'hello' << 'END_CELL'

# Create a Dockerfile that trivially extends the standard hello-world image.
DOCKER_FILE=products/image/Dockerfile
mkdir -p products/image
cat > ${DOCKER_FILE} << END_FILE
FROM hello-world:latest
END_FILE

# Build a new image from the Dockerfile
sudo docker build --quiet -t custom-hello-world ./products/image

# Run the custom hello-world docker image.
sudo docker run --rm custom-hello-world

END_CELL

# ------------------------------------------------------------------------------
