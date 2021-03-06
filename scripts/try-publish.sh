#!/bin/bash

set -e

# pwd
package=$(jq -r .name package.json)
version=$(jq -r .version package.json)
published=$(npm info $package version)

if [[ "$version" = "$published" ]]; then
  echo "⚠️   $package@$version is already published!"
else
  echo "📦  Publishing: $package@$version (published: $published)"
  npm publish $@
fi
