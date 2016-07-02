#!/usr/bin/env sh

THEME=${THEME:="hugo-base-theme"}
hugo -w  --source="/src" --theme="$THEME" --destination="/output" --baseUrl="$BASEURL" --logFile="/logs/hugo.log"

