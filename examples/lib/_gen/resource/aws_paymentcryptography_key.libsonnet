{
  local block = self,
  new(terraformName, exportable):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_paymentcryptography_key",
          type:: "resource",
          attributes:: ["arn", "deletion_window_in_days", "enabled", "exportable", "id", "key_check_value", "key_check_value_algorithm", "key_origin", "key_state", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withExportable(exportable)
  ),
  withDeletionWindowInDays(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"deletion_window_in_days" expected to be of type "number"';
    {
      deletion_window_in_days: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withExportable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exportable" expected to be of type "bool"';
    {
      exportable: converted,
    }
  ),
  withKeyCheckValueAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_check_value_algorithm" expected to be of type "string"';
    {
      key_check_value_algorithm: converted,
    }
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  key_attributes:: {
    local block = self,
    new(keyAlgorithm, keyClass, keyUsage):: (
      {}
      + block.withKeyAlgorithm(keyAlgorithm)
      + block.withKeyClass(keyClass)
      + block.withKeyUsage(keyUsage)
    ),
    withKeyAlgorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_algorithm" expected to be of type "string"';
      {
        key_algorithm: converted,
      }
    ),
    withKeyClass(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_class" expected to be of type "string"';
      {
        key_class: converted,
      }
    ),
    withKeyUsage(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_usage" expected to be of type "string"';
      {
        key_usage: converted,
      }
    ),
    key_modes_of_use:: {
      local block = self,
      new():: (
        {}
      ),
      withDecrypt(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"decrypt" expected to be of type "bool"';
        {
          decrypt: converted,
        }
      ),
      withDeriveKey(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"derive_key" expected to be of type "bool"';
        {
          derive_key: converted,
        }
      ),
      withEncrypt(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypt" expected to be of type "bool"';
        {
          encrypt: converted,
        }
      ),
      withGenerate(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"generate" expected to be of type "bool"';
        {
          generate: converted,
        }
      ),
      withNoRestrictions(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"no_restrictions" expected to be of type "bool"';
        {
          no_restrictions: converted,
        }
      ),
      withSign(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"sign" expected to be of type "bool"';
        {
          sign: converted,
        }
      ),
      withUnwrap(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"unwrap" expected to be of type "bool"';
        {
          unwrap: converted,
        }
      ),
      withVerify(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"verify" expected to be of type "bool"';
        {
          verify: converted,
        }
      ),
      withWrap(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"wrap" expected to be of type "bool"';
        {
          wrap: converted,
        }
      ),
    },
    withKeyModesOfUse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        key_modes_of_use: value,
      }
    ),
    withKeyModesOfUseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        key_modes_of_use+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withKeyAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      key_attributes: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withKeyAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      key_attributes+: converted,
    }
  ),
}
