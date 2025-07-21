SHELL=bash

build:
	@set -e
	@echo "building..."
	docker build --quiet -t jsonnet-tf . &>/dev/null
	@echo -e "done\n"

generate: build
	@set -e
	@echo "generating..."
	docker run --mount type=bind,src=./artifacts,dst=/artifacts -t jsonnet-tf
	@echo -e "done\n"

format: generate
	@set -e
	@echo "formatting..."
	find artifacts/ -name "*.*sonnet" -print0 | xargs -0 -P 16 -I {} jsonnetfmt -i {}
	@echo -e "done\n"

run: format
	@set -e
	@echo -e "run complete\n"
