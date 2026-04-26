.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/bill-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/bill-service:latest .

docker-run:
	docker run --rm -p 50202:50202 --env-file .env gridforge/bill-service:latest
