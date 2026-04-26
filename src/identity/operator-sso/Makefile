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
	docker build -t gridforge/operator-sso:latest .

docker-run:
	docker run --rm -p 50021:50021 --env-file .env gridforge/operator-sso:latest
