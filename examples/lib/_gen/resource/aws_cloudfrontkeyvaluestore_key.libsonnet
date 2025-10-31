{
  local block = self,
  new(terraformName, key, keyValueStoreArn, value):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfrontkeyvaluestore_key",
          type:: "resource",
          attributes:: ["id", "key", "key_value_store_arn", "total_size_in_bytes", "value"],
        },
      },
    }
    + block.withKey(key)
    + block.withKeyValueStoreArn(keyValueStoreArn)
    + block.withValue(value)
  ),
  "#withKey":: "The key to put.",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withKeyValueStoreArn":: "The Amazon Resource Name (ARN) of the Key Value Store.",
  withKeyValueStoreArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_value_store_arn" expected to be of type "string"';
    {
      key_value_store_arn: converted,
    }
  ),
  "#withValue":: "The value to put.",
  withValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
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
