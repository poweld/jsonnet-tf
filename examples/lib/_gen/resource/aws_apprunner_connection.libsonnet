{
  local block = self,
  new(terraformName, connectionName, providerType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apprunner_connection",
          type:: "resource",
          attributes:: ["arn", "connection_name", "id", "provider_type", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withConnectionName(connectionName)
    + block.withProviderType(providerType)
  ),
  withConnectionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_name" expected to be of type "string"';
    {
      connection_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
