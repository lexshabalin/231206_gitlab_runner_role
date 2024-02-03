#!/bin/bash
export CI_SERVER_URL=https://gitlab.com/
export CI_REGISTRATION_TOKEN=GR1348941-25Aa1xDdeg-N1zafdP3

sudo gitlab-runner register --non-interactive \
  --executor "shell" \
  --url "$CI_SERVER_URL" \
  --registration-token $CI_REGISTRATION_TOKEN \
  --description "web01_Runner" \
  --tag-list "web" \
  --run-untagged="false" \
  --locked="false"
