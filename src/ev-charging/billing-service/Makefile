.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/billing-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/billing-service:latest .

docker-run:
	docker run --rm -p 50182:50182 --env-file .env gridforge/billing-service:latest
