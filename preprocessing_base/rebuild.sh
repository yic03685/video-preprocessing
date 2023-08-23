DOCKER_BUILDKIT=0
docker build \
  --no-cache \
  --progress=plain \
  -t yic/motion_model:preprocessing_base \
  -f docker/preprocessing_base/Dockerfile \
  .
