#!/usr/bin/env sh

PROJECT_DIR="$(git rev-parse --show-toplevel)"
EXTENSIONS_FILE="extension-list.txt"

while IFS= read -r EXTENSION; do
    code --install-extension "$EXTENSION"
done < "$PROJECT_DIR/$EXTENSIONS_FILE"
