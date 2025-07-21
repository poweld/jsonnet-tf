SHELL=bash

build:
	@set -e
	@echo "building..."
	docker build --quiet -t jsonnet-tf . &>/dev/null
	@echo "done"

generate: build
	@set -e
	@echo "generating..."
	docker run --mount type=bind,src=./artifacts,dst=/artifacts -t jsonnet-tf
	@echo "done"

format: generate
	@set -e
	@echo "formatting..."
	find artifacts/ -name "*.*sonnet" -print0 | xargs -0 -P 16 -I {} jsonnetfmt -i {}
	@echo "done"

run: format
	@set -e
	@echo "run complete"
