#!/usr/bin/env bash

# paths to data files
COMMON=../common

# ------------------------------------------------------------------------------

bash_cell 'hello-compose' << END_CELL

sudo docker-compose --file hello-world.yml up

END_CELL

# ------------------------------------------------------------------------------
