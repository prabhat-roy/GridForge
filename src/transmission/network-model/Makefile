.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/network-model .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/network-model:latest .

docker-run:
	docker run --rm -p 50080:50080 --env-file .env gridforge/network-model:latest
