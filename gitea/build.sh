#!/bin/bash

set -e

source ${STACK_CONTAINER_BASE_DIR}/build-base.sh

cd $STACK_REPO_BASE_DIR/github.com/go-gitea/gitea

DOCKER_IMAGE=${STACK_IMAGE_NAME} DOCKER_TAG=${STACK_IMAGE_LOCAL_TAG} DOCKER_BUILDKIT=0 make docker
