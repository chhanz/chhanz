#!/bin/sh
# 1) Secret 을 먼저 생성해야된다.
#    $ sudo podman secret create stat-secret <secret file>
# 2) docker or podman 을 실행 할 때, "--secret stat-secret" 옵션 사용이 필요하다.
#    만약 이름을 secret 이름 변경을 하는 경우, 해당 파일 수정이 필요하다. 
#
# EXAMPLE :
# $ sudo podman run -d \
# --secret stat-secret \
# -p 9000:9000 \
# ghcr.io/chhanz/git-readme-stats-docker

export PAT_1=$(cat /run/secrets/stat-secret)
exec "$@"
