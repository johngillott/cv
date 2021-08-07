.PHONY: build
build:
	docker build -t jekyll .

.PHONY: run
run:
	docker-compose up

.PHONY: open
open:
	open http://localhost:4000