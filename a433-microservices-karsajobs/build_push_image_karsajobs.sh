# build_push_image.sh

# Build Docker image
docker build -t karsajobs:latest .

# List local images
docker images

# Rename the image for Docker Hub
docker tag karsajobs:latest aakbaar/karsajobs:latest 

# Login to Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u aakbaar --password-stdin

# Push image to Docker Hubsh
docker push aakbaar/karsajobs:latest 
