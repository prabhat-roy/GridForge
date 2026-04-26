.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/bid-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/bid-service:latest .

docker-run:
	docker run --rm -p 50120:50120 --env-file .env gridforge/bid-service:latest
