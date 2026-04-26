.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/revenue-analytics .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/revenue-analytics:latest .

docker-run:
	docker run --rm -p 50282:50282 --env-file .env gridforge/revenue-analytics:latest
