#!/usr/bin/env bash

# paths to data files
COMMON=../common

# ------------------------------------------------------------------------------

bash_cell 'hello-compose' << 'END_CELL'

# Create a compose file that builds and runs an image derived from the
# standard hello-world image.
COMPOSE_FILE=tmp/compose.yml
cat > ${COMPOSE_FILE} << END_FILE
services:
  hello:
    build: ./image
END_FILE

# Run the image derived from hello-world using docker-compose.
sudo docker-compose --no-ansi --file ${COMPOSE_FILE} up

END_CELL

# ------------------------------------------------------------------------------
