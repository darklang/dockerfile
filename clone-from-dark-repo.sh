#!/usr/bin/env bash

set -euo pipefail

set -x 

dir=$1

mkdir -p scripts/installers

cp "$dir"/Dockerfile ./
cp "$dir"/scripts/installers/* scripts/installers/
