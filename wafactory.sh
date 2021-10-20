#!/bin/bash

# this shell script generates "webapps" using firefox

PROFILE_NAME="$(uuidgen)-$1"

firefox -CreateProfile $PROFILE_NAME
