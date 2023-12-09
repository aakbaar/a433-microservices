# build_push_image.sh

# Build Docker image
docker build -t karsajobs-ui:latest .

# List local images
docker images

# Rename the image for Docker Hub
docker tag karsajobs-ui:latest aakbaar/karsajobs-ui:latest 

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u aakbaar --password-stdin

# Push image to Docker Hubsh
docker push aakbaar/karsajobs-ui:latest 
