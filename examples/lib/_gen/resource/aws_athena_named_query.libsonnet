{
  local block = self,
  new(terraformName, database, name, query):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_athena_named_query",
          type:: "resource",
          attributes:: ["database", "description", "id", "name", "query", "region", "workgroup"],
        },
      },
    }
    + block.withDatabase(database)
    + block.withName(name)
    + block.withQuery(query)
  ),
  withDatabase(value):: (
    local converted = value;
    assert std.isString(converted) : '"database" expected to be of type "string"';
    {
      database: converted,
    }
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
  withQuery(value):: (
    local converted = value;
    assert std.isString(converted) : '"query" expected to be of type "string"';
    {
      query: converted,
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
  withWorkgroup(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup" expected to be of type "string"';
    {
      workgroup: converted,
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
