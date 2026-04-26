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
	docker build -t gridforge/plant-service:latest .

docker-run:
	docker run --rm -p 50060:50060 --env-file .env gridforge/plant-service:latest
