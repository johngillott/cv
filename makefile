.PHONY: build
build:
	docker build -t jekyll .

.PHONY: run
run:
	docker-compose up