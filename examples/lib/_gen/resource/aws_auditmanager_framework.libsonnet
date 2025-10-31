{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_auditmanager_framework",
          type:: "resource",
          attributes:: ["arn", "compliance_type", "description", "framework_type", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withComplianceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"compliance_type" expected to be of type "string"';
    {
      compliance_type: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  control_sets:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    controls:: {
      local block = self,
      new(id):: (
        {}
        + block.withId(id)
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
    },
    withControls(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        controls: value,
      }
    ),
    withControlsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        controls+: converted,
      }
    ),
  },
  withControlSets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_sets: value,
    }
  ),
  withControlSetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      control_sets+: converted,
    }
  ),
}
