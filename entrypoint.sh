#!/bin/sh -l

mkdir $HOME/.ask
sed -e "s/ASK_REFRESH_TOKEN/$ASK_REFRESH_TOKEN/g" ~/  /cli_config.json > $HOME/.ask/cli_config

cd $INPUT_DIRECTORY

ask init --hosted-skill-id $SKILL_ID
ask $INPUT_ARGS
