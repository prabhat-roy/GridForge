.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/settlement-gateway .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/settlement-gateway:latest .

docker-run:
	docker run --rm -p 50300:50300 --env-file .env gridforge/settlement-gateway:latest
