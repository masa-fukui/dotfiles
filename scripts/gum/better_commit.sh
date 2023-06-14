#!/bin/sh

TYPE=$(gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore" "revert")

# Pre-populate the input with the type: so that the user may change it
SUMMARY=$(gum input --value "$TYPE: " --placeholder "Summary of this change")
DESCRIPTION=$(gum input --placeholder "Details of this change (CTRL+D to finish)")

# Commit these changes
gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
