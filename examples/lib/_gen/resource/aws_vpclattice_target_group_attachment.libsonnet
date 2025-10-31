{
  local block = self,
  new(terraformName, targetGroupIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpclattice_target_group_attachment",
          type:: "resource",
          attributes:: ["id", "region", "target_group_identifier"],
        },
      },
    }
    + block.withTargetGroupIdentifier(targetGroupIdentifier)
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
  withTargetGroupIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_group_identifier" expected to be of type "string"';
    {
      target_group_identifier: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  target:: {
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
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
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
  },
  withTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}
