{
  local block = self,
  new(terraformName, authMode, defaultS3Location, engineSecurityGroupId, name, serviceRole, subnetIds, vpcId, workspaceSecurityGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_studio",
          type:: "resource",
          attributes:: ["arn", "auth_mode", "default_s3_location", "description", "encryption_key_arn", "engine_security_group_id", "id", "idp_auth_url", "idp_relay_state_parameter_name", "name", "region", "service_role", "subnet_ids", "tags", "tags_all", "url", "user_role", "vpc_id", "workspace_security_group_id"],
        },
      },
    }
    + block.withAuthMode(authMode)
    + block.withDefaultS3Location(defaultS3Location)
    + block.withEngineSecurityGroupId(engineSecurityGroupId)
    + block.withName(name)
    + block.withServiceRole(serviceRole)
    + block.withSubnetIds(subnetIds)
    + block.withVpcId(vpcId)
    + block.withWorkspaceSecurityGroupId(workspaceSecurityGroupId)
  ),
  withAuthMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_mode" expected to be of type "string"';
    {
      auth_mode: converted,
    }
  ),
  withDefaultS3Location(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_s3_location" expected to be of type "string"';
    {
      default_s3_location: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEncryptionKeyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_key_arn" expected to be of type "string"';
    {
      encryption_key_arn: converted,
    }
  ),
  withEngineSecurityGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_security_group_id" expected to be of type "string"';
    {
      engine_security_group_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdpAuthUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_auth_url" expected to be of type "string"';
    {
      idp_auth_url: converted,
    }
  ),
  withIdpRelayStateParameterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_relay_state_parameter_name" expected to be of type "string"';
    {
      idp_relay_state_parameter_name: converted,
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
  withServiceRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  withSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  withSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  withUserRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_role" expected to be of type "string"';
    {
      user_role: converted,
    }
  ),
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withWorkspaceSecurityGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_security_group_id" expected to be of type "string"';
    {
      workspace_security_group_id: converted,
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
