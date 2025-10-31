{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_release_labels",
          type:: "data",
          attributes:: ["id", "region", "release_labels"],
        },
      },
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
    withApplication(value):: (
      local converted = value;
      assert std.isString(converted) : '"application" expected to be of type "string"';
      {
        application: converted,
      }
    ),
    withPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
  },
  withFilters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  withFiltersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
}
