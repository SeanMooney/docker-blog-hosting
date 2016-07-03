#!/usr/bin/env sh

THEME=${THEME:="polymer"}
hugo -w  --source="/src" --theme="$THEME" --destination="/output" --baseUrl="$BASEURL" --logFile="/logs/hugo.log"

