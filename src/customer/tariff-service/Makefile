.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/tariff-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/tariff-service:latest .

docker-run:
	docker run --rm -p 50201:50201 --env-file .env gridforge/tariff-service:latest
