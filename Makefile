PACKAGE_NAME=hello-world
VERSION=1.0.0.SNAPSHOT
PORT = 5000
DOCKER_HUB=pablon27 

docker-build:
	docker build -t ${PACKAGE_NAME}:${VERSION} .

docker-shell:
	docker run -p ${PORT}:5000 ${PACKAGE_NAME}:${VERSION}
