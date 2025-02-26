#!/bin/bash

set -e

source ${BPI_CONTAINER_BASE_DIR}/build-base.sh

cd $BPI_REPO_BASE_DIR/gitea

DOCKER_IMAGE=${BPI_IMAGE_NAME} DOCKER_TAG=${BPI_IMAGE_LOCAL_TAG} DOCKER_BUILDKIT=0 make docker
