#!/usr/bin/env bash

# paths to data files
COMMON=../common

# ------------------------------------------------------------------------------

bash_cell 'hello-compose' << END_CELL

sudo docker-compose --no-ansi --file hello-world-local.yml up

END_CELL

# ------------------------------------------------------------------------------
