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
	docker build -t gridforge/customer-sso:latest .

docker-run:
	docker run --rm -p 50022:50022 --env-file .env gridforge/customer-sso:latest
