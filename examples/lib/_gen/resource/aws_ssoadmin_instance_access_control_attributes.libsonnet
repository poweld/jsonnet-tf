{
  local block = self,
  new(terraformName, instanceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_instance_access_control_attributes",
          type:: "resource",
          attributes:: ["id", "instance_arn", "region", "status", "status_reason"],
        },
      },
    }
    + block.withInstanceArn(instanceArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  attribute:: {
    local block = self,
    new(key):: (
      {}
      + block.withKey(key)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    value:: {
      local block = self,
      new(source):: (
        {}
        + block.withSource(source)
      ),
      withSource(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source" expected to be of type "set"';
        {
          source: converted,
        }
      ),
      withSourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"source" expected to be of type "set"';
        {
          source+: converted,
        }
      ),
    },
    withValue(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value: value,
      }
    ),
    withValueMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        value+: converted,
      }
    ),
  },
  withAttribute(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute: value,
    }
  ),
  withAttributeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute+: converted,
    }
  ),
}
