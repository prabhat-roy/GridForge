.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/generation-forecast .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/generation-forecast:latest .

docker-run:
	docker run --rm -p 50281:50281 --env-file .env gridforge/generation-forecast:latest
