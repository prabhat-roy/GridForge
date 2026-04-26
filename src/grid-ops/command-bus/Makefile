.PHONY: build test run lint docker-build

build:
	cargo build

test:
	cargo test

run:
	cargo run

lint:
	cargo clippy -- -D warnings

release:
	cargo build --release

docker-build:
	docker build -t gridforge/command-bus:latest .

docker-run:
	docker run --rm -p 50044:50044 --env-file .env gridforge/command-bus:latest
