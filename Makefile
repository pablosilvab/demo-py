PACKAGE_NAME=demo-python-docker
VERSION=1.0.0.SNAPSHOT
PORT = 5000
DOCKER_HUB=pablon27 

docker-build:
	docker build -t ${PACKAGE_NAME}:${VERSION} .

docker-shell:
	docker run --rm -p ${PORT}:5000 ${PACKAGE_NAME}:${VERSION}

run:
	python3 app.py

install:
	pip3 install -r requirements.txt