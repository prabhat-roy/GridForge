.PHONY: build test run clean docker-build

build:
	cmake -G Ninja -B build -DCMAKE_BUILD_TYPE=Release
	cmake --build build --target scada-gateway

test:
	cmake --build build --target test
	ctest --test-dir build --output-on-failure

run: build
	./build/scada-gateway

clean:
	rm -rf build

docker-build:
	docker build -t gridforge/scada-gateway:latest .

docker-run:
	docker run --rm -p 50040:50040 --env-file .env gridforge/scada-gateway:latest
