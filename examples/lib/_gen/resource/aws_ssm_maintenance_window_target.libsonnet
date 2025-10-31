{
  local block = self,
  new(terraformName, resourceType, windowId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_maintenance_window_target",
          type:: "resource",
          attributes:: ["description", "id", "name", "owner_information", "region", "resource_type", "window_id"],
        },
      },
    }
    + block.withResourceType(resourceType)
    + block.withWindowId(windowId)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
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
  withOwnerInformation(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_information" expected to be of type "string"';
    {
      owner_information: converted,
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
  withResourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  withWindowId(value):: (
    local converted = value;
    assert std.isString(converted) : '"window_id" expected to be of type "string"';
    {
      window_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  targets:: {
    local block = self,
    new(key, values):: (
      {}
      + block.withKey(key)
      + block.withValues(values)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  withTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets: value,
    }
  ),
  withTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets+: converted,
    }
  ),
}
