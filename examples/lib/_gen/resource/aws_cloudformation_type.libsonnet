{
  local block = self,
  new(terraformName, schemaHandlerPackage, typeName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudformation_type",
          type:: "resource",
          attributes:: ["arn", "default_version_id", "deprecated_status", "description", "documentation_url", "execution_role_arn", "id", "is_default_version", "provisioning_type", "region", "schema", "schema_handler_package", "source_url", "type", "type_arn", "type_name", "version_id", "visibility"],
        },
      },
    }
    + block.withSchemaHandlerPackage(schemaHandlerPackage)
    + block.withTypeName(typeName)
  ),
  withExecutionRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
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
  withSchemaHandlerPackage(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema_handler_package" expected to be of type "string"';
    {
      schema_handler_package: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  logging_config:: {
    local block = self,
    new(logGroupName, logRoleArn):: (
      {}
      + block.withLogGroupName(logGroupName)
      + block.withLogRoleArn(logRoleArn)
    ),
    withLogGroupName(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
      {
        log_group_name: converted,
      }
    ),
    withLogRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_role_arn" expected to be of type "string"';
      {
        log_role_arn: converted,
      }
    ),
  },
  withLoggingConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  withLoggingConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
}
