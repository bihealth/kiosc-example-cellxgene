#!/bin/bash

CELLXGENE=1.0.0

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR

docker build . \
    -t ghcr.io/bihealth/kiosc-example-cellxgene:$CELLXGENE
