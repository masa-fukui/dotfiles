#!/usr/bin/env bash

for cmd in diff log tag branch; do
    git config pager.$cmd true
    echo "Enabled pager for: $cmd"
done

