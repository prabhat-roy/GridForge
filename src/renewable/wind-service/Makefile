.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/wind-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/wind-service:latest .

docker-run:
	docker run --rm -p 50061:50061 --env-file .env gridforge/wind-service:latest
