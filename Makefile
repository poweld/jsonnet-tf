build:
	@set -e
	@echo "generating..."
	docker build --quiet -t jsonnet-tf . &>/dev/null >/dev/null
	docker run --mount type=bind,src=./artifacts,dst=/artifacts -it jsonnet-tf
	@echo "done"

format: build
	@set -e
	@echo "formatting..."
	find artifacts/ -name "*.*sonnet" -print0 | xargs -0 -P 16 -I {} jsonnetfmt -i {}
	@echo "done"

run: format
	@set -e
	@echo "run complete"
