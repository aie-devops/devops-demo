default:
  just --list --unsorted

dependencies:
  @type docker
  @docker --version

alias deps := dependencies

docker-build:
  @echo "Building Docker image for user: $(user), version: $(version)"
  docker build \
    --tag {{user}}/{{image}}:{{version}} .

alias build := docker-build

docker-build-multi user version image="devops-demo":
  @echo "Building multi-platform Docker image for user: $(user), version: $(version)"
  docker buildx build \
    --platform linux/amd64,linux/arm64 \
    --tag {{user}}/{{image}}:{{version}} \
    --push .

alias build-multi := docker-build-multi
