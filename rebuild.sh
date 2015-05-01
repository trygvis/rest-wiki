#!/bin/bash

destdir=../rest-wiki-html
theme=../ikiwiki-bootstrap-theme

rm -rf "$destdir"
mkdir "$destdir"

opts=()
opts+=(--plugin goodstuff)
opts+=(--rebuild)
opts+=(--wikiname "REST Wiki")

if [[ -d $theme ]]
then
  opts+=(--templatedir $theme)
fi

ikiwiki . "$destdir" "${opts[@]}"
