#!/bin/bash

mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.285.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.285.1/actions-runner-linux-x64-2.285.1.tar.gz

tar xzf ./actions-runner-linux-x64-2.285.1.tar.gz

export RUNNER_ALLOW_RUNASROOT="0"

./config.sh --unattended --url $GITHUBCI_URL --token $GITHUBCI_TOKEN --name $GITHUBCI_NAME --work /opt/actions

nohup ./run.sh &
