{
  local block = self,
  new(terraformName, verifiedaccessInstanceId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedaccess_group",
          type:: "resource",
          attributes:: ["creation_time", "deletion_time", "description", "id", "last_updated_time", "owner", "policy_document", "region", "tags", "tags_all", "verifiedaccess_group_arn", "verifiedaccess_group_id", "verifiedaccess_instance_id"],
        },
      },
    }
    + block.withVerifiedaccessInstanceId(verifiedaccessInstanceId)
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
  withPolicyDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
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
  withVerifiedaccessInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"verifiedaccess_instance_id" expected to be of type "string"';
    {
      verifiedaccess_instance_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  sse_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withCustomerManagedKeyEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"customer_managed_key_enabled" expected to be of type "bool"';
      {
        customer_managed_key_enabled: converted,
      }
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
      }
    ),
  },
  withSseConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_configuration: value,
    }
  ),
  withSseConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_configuration+: converted,
    }
  ),
}
