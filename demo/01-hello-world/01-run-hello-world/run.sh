#!/usr/bin/env bash

# paths to data files
COMMON=../common

# ------------------------------------------------------------------------------

bash_cell 'hello' << END_CELL

# Run the standard hello-world docker image.
sudo docker run --rm hello-world

END_CELL

# ------------------------------------------------------------------------------
