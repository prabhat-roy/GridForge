.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/maintenance-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/maintenance-service:latest .

docker-run:
	docker run --rm -p 50220:50220 --env-file .env gridforge/maintenance-service:latest
