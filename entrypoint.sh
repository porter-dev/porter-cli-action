#!/usr/bin/env bash

: "${INPUT_COMMAND:?input \"command\" not set or empty}"

# Intentional word splitting.
# shellcheck disable=SC2086
exec porter $INPUT_COMMAND
