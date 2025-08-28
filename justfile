# Common commands for development

# Generate libraries
generate:
    ./jsonnet-tf --provider okta/okta --provider-version "~> 5.3.0" --terraform-version ">= 1.12.1" --force

# Run type checking
type-check:
    poetry run mypy --strict src/ tests/

# Run linting checks
lint:
    poetry run ruff format src/ tests/
    poetry run ruff check --fix src/ tests/

# Run tests
test:
    python3 tests/test_jsonnet_tf.py

# Run all checks
all: test type-check lint
    echo "All checks passed!"
