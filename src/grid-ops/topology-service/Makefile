.PHONY: build test run package docker-build

build:
	mvn -B compile

test:
	mvn -B test

run:
	mvn -B spring-boot:run

package:
	mvn -B package -DskipTests

docker-build: package
	docker build -t gridforge/topology-service:latest .

docker-run:
	docker run --rm -p 50041:50041 --env-file .env gridforge/topology-service:latest
