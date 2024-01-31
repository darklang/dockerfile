#!/usr/bin/env bash

# run like
# ./clone-from-dark-repo.sh "../dark"

set -euo pipefail

set -x 

dir=$1

mkdir -p scripts/installers

cp "$dir"/Dockerfile ./
cp "$dir"/scripts/installers/* scripts/installers/
