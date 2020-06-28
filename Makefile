REPOSITORY?=
TAG?=

build:
	CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-extldflags "-static"' -o devopsweekly cmd/devopsweekly/*.go 
	docker build -t ${REPOSITORY}:${TAG} .
	rm devopsweekly

