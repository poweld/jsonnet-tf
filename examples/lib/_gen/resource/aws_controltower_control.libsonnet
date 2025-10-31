{
  local block = self,
  new(terraformName, controlIdentifier, targetIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_controltower_control",
          type:: "resource",
          attributes:: ["arn", "control_identifier", "id", "region", "target_identifier"],
        },
      },
    }
    + block.withControlIdentifier(controlIdentifier)
    + block.withTargetIdentifier(targetIdentifier)
  ),
  withControlIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"control_identifier" expected to be of type "string"';
    {
      control_identifier: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTargetIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_identifier" expected to be of type "string"';
    {
      target_identifier: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  parameters:: {
    local block = self,
    new(key, value):: (
      {}
      + block.withKey(key)
      + block.withValue(value)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters+: converted,
    }
  ),
}
