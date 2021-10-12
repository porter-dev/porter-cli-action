#!/usr/bin/env bash

: "${INPUT_COMMAND:?input \"command\" not set or empty}"

/bin/sh -c "porter $INPUT_COMMAND"