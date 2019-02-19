#!/bin/sh
set -e
redis-server &
sh -c "$*"
