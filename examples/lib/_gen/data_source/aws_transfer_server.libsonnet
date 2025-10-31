{
  local block = self,
  new(terraformName, serverId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_server",
          type:: "data",
          attributes:: ["arn", "certificate", "domain", "endpoint", "endpoint_type", "id", "identity_provider_type", "invocation_role", "logging_role", "protocols", "region", "security_policy_name", "server_id", "structured_log_destinations", "tags", "url"],
        },
      },
    }
    + block.withServerId(serverId)
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
  withServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_id" expected to be of type "string"';
    {
      server_id: converted,
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
}
