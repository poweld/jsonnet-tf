# Common commands for development

# Run type checking
type-check:
    poetry run mypy --strict src/

# Run linting checks
lint:
    poetry run ruff format src/
    poetry run ruff check --fix src/

# Run tests
test:
    python3 tests/test_jsonnet_tf.py

# Run all checks
all: test type-check lint
    echo "All checks passed!"
