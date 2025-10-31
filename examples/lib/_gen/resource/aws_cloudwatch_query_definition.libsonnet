{
  local block = self,
  new(terraformName, name, queryString):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_query_definition",
          type:: "resource",
          attributes:: ["id", "log_group_names", "name", "query_definition_id", "query_string", "region"],
        },
      },
    }
    + block.withName(name)
    + block.withQueryString(queryString)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLogGroupNames(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_names" expected to be of type "list"';
    {
      log_group_names: converted,
    }
  ),
  withLogGroupNamesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"log_group_names" expected to be of type "list"';
    {
      log_group_names+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withQueryString(value):: (
    local converted = value;
    assert std.isString(converted) : '"query_string" expected to be of type "string"';
    {
      query_string: converted,
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
}
