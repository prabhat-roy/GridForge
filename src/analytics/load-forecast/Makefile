.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/load-forecast .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/load-forecast:latest .

docker-run:
	docker run --rm -p 50280:50280 --env-file .env gridforge/load-forecast:latest
