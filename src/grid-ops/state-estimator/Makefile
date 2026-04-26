.PHONY: install run test lint docker-build

install:
	python -m pip install --user -r requirements.txt

run:
	python main.py

test:
	python -m pytest -v

lint:
	python -m ruff check .

docker-build:
	docker build -t gridforge/state-estimator:latest .

docker-run:
	docker run --rm -p 50042:50042 --env-file .env gridforge/state-estimator:latest
