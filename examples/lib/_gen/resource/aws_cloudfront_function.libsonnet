{
  local block = self,
  new(terraformName, code, name, runtime):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfront_function",
          type:: "resource",
          attributes:: ["arn", "code", "comment", "etag", "id", "key_value_store_associations", "live_stage_etag", "name", "publish", "runtime", "status"],
        },
      },
    }
    + block.withCode(code)
    + block.withName(name)
    + block.withRuntime(runtime)
  ),
  withCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"code" expected to be of type "string"';
    {
      code: converted,
    }
  ),
  withComment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyValueStoreAssociations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_value_store_associations" expected to be of type "set"';
    {
      key_value_store_associations: converted,
    }
  ),
  withKeyValueStoreAssociationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_value_store_associations" expected to be of type "set"';
    {
      key_value_store_associations+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPublish(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publish" expected to be of type "bool"';
    {
      publish: converted,
    }
  ),
  withRuntime(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime" expected to be of type "string"';
    {
      runtime: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
