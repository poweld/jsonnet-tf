{
  local block = self,
  new(terraformName, accessRole, baseDirectory, localProfileId, partnerProfileId, serverId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_agreement",
          type:: "resource",
          attributes:: ["access_role", "agreement_id", "arn", "base_directory", "description", "id", "local_profile_id", "partner_profile_id", "region", "server_id", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withAccessRole(accessRole)
    + block.withBaseDirectory(baseDirectory)
    + block.withLocalProfileId(localProfileId)
    + block.withPartnerProfileId(partnerProfileId)
    + block.withServerId(serverId)
  ),
  withAccessRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_role" expected to be of type "string"';
    {
      access_role: converted,
    }
  ),
  withBaseDirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_directory" expected to be of type "string"';
    {
      base_directory: converted,
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
  withLocalProfileId(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_profile_id" expected to be of type "string"';
    {
      local_profile_id: converted,
    }
  ),
  withPartnerProfileId(value):: (
    local converted = value;
    assert std.isString(converted) : '"partner_profile_id" expected to be of type "string"';
    {
      partner_profile_id: converted,
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
