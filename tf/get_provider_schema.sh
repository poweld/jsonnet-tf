#!/usr/bin/env bash
terraform providers schema -json > schema.json
cat schema.json | jq . -M > schema_pretty.json
