{
  local block = self,
  new(terraformName, applicationId, locationUri, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appconfig_configuration_profile",
          type:: "resource",
          attributes:: ["application_id", "arn", "configuration_profile_id", "description", "id", "kms_key_identifier", "location_uri", "name", "region", "retrieval_role_arn", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withApplicationId(applicationId)
    + block.withLocationUri(locationUri)
    + block.withName(name)
  ),
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
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
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
    }
  ),
  withLocationUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_uri" expected to be of type "string"';
    {
      location_uri: converted,
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
  withRetrievalRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"retrieval_role_arn" expected to be of type "string"';
    {
      retrieval_role_arn: converted,
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
  validator:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withContent(value):: (
      local converted = value;
      assert std.isString(converted) : '"content" expected to be of type "string"';
      {
        content: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withValidator(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validator: value,
    }
  ),
  withValidatorMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validator+: converted,
    }
  ),
}
