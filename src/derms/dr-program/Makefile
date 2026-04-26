.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/dr-program .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/dr-program:latest .

docker-run:
	docker run --rm -p 50142:50142 --env-file .env gridforge/dr-program:latest
