#!/bin/sh

branches=$(git branch --format="%(refname:short)")
branch=$(echo "$branches" | gum filter)
git checkout $branch
