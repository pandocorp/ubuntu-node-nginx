#version=3.0.1
#docker buildx build --push --tag gramcha/ubuntu-node-nginx:$version -f Dockerfile-node18 -o type=image --platform=linux/arm64,linux/amd64 .


#version=2.0.1
#docker buildx build --push --tag gramcha/ubuntu-node-nginx:$version -f Dockerfile-node14 -o type=image --platform=linux/arm64,linux/amd64 .



#version=4.0.0
#docker buildx build --push --tag gramcha/ubuntu-node-nginx:$version -f Dockerfile-node18-nginx-consul -o type=image --platform=linux/arm64,linux/amd64 .


#version=5.0.0
#docker buildx build --push --tag gramcha/ubuntu-node-nginx:$version -f Dockerfile-node18-nginx-consul -o type=image --platform=linux/arm64,linux/amd64 .

# ubuntu 22.04, node v18.20.2, nginx 1.18.0, consul 1.9.4
version=6.0.0
docker buildx build --push --tag gramcha/ubuntu-node-nginx:$version -f Dockerfile-node18-nginx-consul -o type=image --platform=linux/arm64,linux/amd64 .
