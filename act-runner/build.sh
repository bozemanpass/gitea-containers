#!/usr/bin/env bash
source ${STACK_CONTAINER_BASE_DIR}/build-base.sh
# Build a local version of the act-runner image

FULL_REPO_PATH=${STACK_REPO_BASE_DIR}/gitea.com/gitea/act_runner/

docker build --target dind -t ${STACK_IMAGE_NAME}:${STACK_IMAGE_LOCAL_TAG} -f ${FULL_REPO_PATH}/Dockerfile ${build_command_args} ${FULL_REPO_PATH}
