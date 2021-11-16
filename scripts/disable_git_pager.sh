#!/usr/bin/env bash

for cmd in diff log tag branch; do
    git config pager.$cmd false
    echo "Disabled pager for: $cmd"
done

