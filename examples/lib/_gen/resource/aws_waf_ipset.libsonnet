{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_waf_ipset",
          type:: "resource",
          attributes:: ["arn", "id", "name"],
        },
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ip_set_descriptors:: {
    local block = self,
    new(type, value):: (
      {}
      + block.withType(type)
      + block.withValue(value)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withIpSetDescriptors(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_set_descriptors: value,
    }
  ),
  withIpSetDescriptorsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_set_descriptors+: converted,
    }
  ),
}
