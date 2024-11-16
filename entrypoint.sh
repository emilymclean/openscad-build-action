#!/bin/bash

cmd=()

if [[ -n "$3" ]]; then
  cmd+=("-p" "$GITHUB_WORKSPACE/$3")
fi

if [[ -n "$4" ]]; then
  cmd+=("-P" "$4")
fi

openscad -o "$GITHUB_WORKSPACE/$2" "$GITHUB_WORKSPACE/$1" "${cmd[@]}"
