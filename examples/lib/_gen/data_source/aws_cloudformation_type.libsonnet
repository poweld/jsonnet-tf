{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudformation_type",
          type:: "data",
          attributes:: ["arn", "default_version_id", "deprecated_status", "description", "documentation_url", "execution_role_arn", "id", "is_default_version", "logging_config", "provisioning_type", "region", "schema", "source_url", "type", "type_arn", "type_name", "version_id", "visibility"],
        },
      },
    }
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTypeName(value):: (
    local converted = value;
    assert std.isString(converted) : '"type_name" expected to be of type "string"';
    {
      type_name: converted,
    }
  ),
  withVersionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
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
