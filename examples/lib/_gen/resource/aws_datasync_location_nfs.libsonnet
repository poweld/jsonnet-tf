{
  local block = self,
  new(terraformName, serverHostname, subdirectory):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_location_nfs",
          type:: "resource",
          attributes:: ["arn", "id", "region", "server_hostname", "subdirectory", "tags", "tags_all", "uri"],
        },
      },
    }
    + block.withServerHostname(serverHostname)
    + block.withSubdirectory(subdirectory)
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
  withServerHostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_hostname" expected to be of type "string"';
    {
      server_hostname: converted,
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
  mount_options:: {
    local block = self,
    new():: (
      {}
    ),
    withVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  on_prem_config:: {
    local block = self,
    new(agentArns):: (
      {}
      + block.withAgentArns(agentArns)
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
  },
  withMountOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mount_options: value,
    }
  ),
  withOnPremConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_prem_config: value,
    }
  ),
  withMountOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mount_options+: converted,
    }
  ),
  withOnPremConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_prem_config+: converted,
    }
  ),
}
