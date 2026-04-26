.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/imbalance-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/imbalance-service:latest .

docker-run:
	docker run --rm -p 50122:50122 --env-file .env gridforge/imbalance-service:latest
