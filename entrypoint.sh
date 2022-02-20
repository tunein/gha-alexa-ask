#!/bin/sh -l

mkdir $HOME/.ask
sed -e "s/ASK_REFRESH_TOKEN/$ASK_REFRESH_TOKEN/g" ~/  /cli_config.json > $HOME/.ask/cli_config

result=$($1)
echo "::set-output name=result::$result"