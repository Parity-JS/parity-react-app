#!/bin/bash

set -e

echo "📦  Publishing latest release..."

# $(dirname $0)/notify pending

# note: try-publish should exit cleanly if it detects a duplicate
# published version
$(npm bin)/lerna exec -- $(pwd)/scripts/try-publish.sh

echo "📓  Updated CHANGELOG..."

$(npm bin)/lerna-changelog
