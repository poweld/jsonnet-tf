{
  local block = self,
  new(terraformName, data, name, workspaceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_prometheus_rule_group_namespace",
          type:: "resource",
          attributes:: ["arn", "data", "id", "name", "region", "tags", "tags_all", "workspace_id"],
        },
      },
    }
    + block.withData(data)
    + block.withName(name)
    + block.withWorkspaceId(workspaceId)
  ),
  withData(value):: (
    local converted = value;
    assert std.isString(converted) : '"data" expected to be of type "string"';
    {
      data: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withWorkspaceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
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
