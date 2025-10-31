{
  local block = self,
  new(terraformName, as2Id, profileType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_profile",
          type:: "resource",
          attributes:: ["arn", "as2_id", "certificate_ids", "id", "profile_id", "profile_type", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAs2Id(as2Id)
    + block.withProfileType(profileType)
  ),
  withAs2Id(value):: (
    local converted = value;
    assert std.isString(converted) : '"as2_id" expected to be of type "string"';
    {
      as2_id: converted,
    }
  ),
  withCertificateIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_ids" expected to be of type "set"';
    {
      certificate_ids: converted,
    }
  ),
  withCertificateIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_ids" expected to be of type "set"';
    {
      certificate_ids+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withProfileType(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_type" expected to be of type "string"';
    {
      profile_type: converted,
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
