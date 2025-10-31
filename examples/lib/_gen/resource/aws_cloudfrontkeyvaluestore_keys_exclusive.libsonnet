{
  local block = self,
  new(terraformName, keyValueStoreArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudfrontkeyvaluestore_keys_exclusive",
          type:: "resource",
          attributes:: ["key_value_store_arn", "max_batch_size", "total_size_in_bytes"],
        },
      },
    }
    + block.withKeyValueStoreArn(keyValueStoreArn)
  ),
  "#withKeyValueStoreArn":: "The Amazon Resource Name (ARN) of the Key Value Store.",
  withKeyValueStoreArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_value_store_arn" expected to be of type "string"';
    {
      key_value_store_arn: converted,
    }
  ),
  "#withMaxBatchSize":: "Maximum resource key values pairs that you wills update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first",
  withMaxBatchSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_batch_size" expected to be of type "number"';
    {
      max_batch_size: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  resource_key_value_pair:: {
    local block = self,
    new(key, value):: (
      {}
      + block.withKey(key)
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
    "#withValue":: "The value to put.",
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withResourceKeyValuePair(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_key_value_pair: value,
    }
  ),
  withResourceKeyValuePairMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_key_value_pair+: converted,
    }
  ),
}
