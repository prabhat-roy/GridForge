.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/load-balancer .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t gridforge/load-balancer:latest .

docker-run:
	docker run --rm -p 50143:50143 --env-file .env gridforge/load-balancer:latest
