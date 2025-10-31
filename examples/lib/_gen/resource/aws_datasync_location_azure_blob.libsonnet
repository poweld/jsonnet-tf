{
  local block = self,
  new(terraformName, agentArns, authenticationType, containerUrl):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_location_azure_blob",
          type:: "resource",
          attributes:: ["access_tier", "agent_arns", "arn", "authentication_type", "blob_type", "container_url", "id", "region", "subdirectory", "tags", "tags_all", "uri"],
        },
      },
    }
    + block.withAgentArns(agentArns)
    + block.withAuthenticationType(authenticationType)
    + block.withContainerUrl(containerUrl)
  ),
  withAccessTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_tier" expected to be of type "string"';
    {
      access_tier: converted,
    }
  ),
  withAgentArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns: converted,
    }
  ),
  withAgentArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns+: converted,
    }
  ),
  withAuthenticationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_type" expected to be of type "string"';
    {
      authentication_type: converted,
    }
  ),
  withBlobType(value):: (
    local converted = value;
    assert std.isString(converted) : '"blob_type" expected to be of type "string"';
    {
      blob_type: converted,
    }
  ),
  withContainerUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_url" expected to be of type "string"';
    {
      container_url: converted,
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
  withSubdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
  sas_configuration:: {
    local block = self,
    new(token):: (
      {}
      + block.withToken(token)
    ),
    withToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"token" expected to be of type "string"';
      {
        token: converted,
      }
    ),
  },
  withSasConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sas_configuration: value,
    }
  ),
  withSasConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sas_configuration+: converted,
    }
  ),
}
