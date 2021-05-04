set -e

IMAGE="form_theme_bundle:2.0"
ARGS="-v `pwd`:/app -w /app"
docker build -f .docker/Dockerfile -t $IMAGE .
docker run $ARGS $IMAGE "$@"