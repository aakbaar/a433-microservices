# build_push_image.sh

# Build Docker image
docker build -t order-service:latest .

# List local images
docker images

# Rename the image for Docker Hub
docker tag order-service:latest aakbaar/order-service:latest 

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u aakbaar --password-stdin

# Push image to Docker Hubsh
docker push aakbaar/order-service:latest