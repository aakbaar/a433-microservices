# build_push_image.sh

# Build Docker image
docker build -t item-app:v1 .

# List local images
docker images

# Rename the image for Docker Hub
docker tag item-app:v1 aakbaar/item-app:v1

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u aakbaar --password-stdin

# Push image to Docker Hubsh
docker push aakbaar/item-app:v1
