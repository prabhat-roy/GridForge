.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/trader-bff .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/trader-bff:latest .

docker-run:
	docker run --rm -p 50003:50003 --env-file .env gridforge/trader-bff:latest
