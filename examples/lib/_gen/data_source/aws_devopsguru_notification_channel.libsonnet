{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devopsguru_notification_channel",
          type:: "data",
          attributes:: ["id", "region"],
        },
      },
    }
    + block.withId(id)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filters:: {
    local block = self,
    new():: (
      {}
    ),
  },
  sns:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withFilters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  withSns(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns: value,
    }
  ),
  withFiltersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
  withSnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sns+: converted,
    }
  ),
}
