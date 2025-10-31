{
  local block = self,
  new(terraformName, name, projectArn, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devicefarm_upload",
          type:: "resource",
          attributes:: ["arn", "category", "content_type", "id", "metadata", "name", "project_arn", "region", "type", "url"],
        },
      },
    }
    + block.withName(name)
    + block.withProjectArn(projectArn)
    + block.withType(type)
  ),
  withContentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_type" expected to be of type "string"';
    {
      content_type: converted,
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
  withProjectArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_arn" expected to be of type "string"';
    {
      project_arn: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
