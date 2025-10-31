{
  local block = self,
  new(terraformName, displayName, iamServiceRoleArn, identityCenterInstanceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_qbusiness_application",
          type:: "resource",
          attributes:: ["arn", "description", "display_name", "iam_service_role_arn", "id", "identity_center_application_arn", "identity_center_instance_arn", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withDisplayName(displayName)
    + block.withIamServiceRoleArn(iamServiceRoleArn)
    + block.withIdentityCenterInstanceArn(identityCenterInstanceArn)
  ),
  "#withDescription":: "A description of the Amazon Q application.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withDisplayName":: "The display name of the Amazon Q application.",
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  "#withIamServiceRoleArn":: "The Amazon Resource Name (ARN) of the IAM service role that provides permissions for the Amazon Q application.",
  withIamServiceRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_service_role_arn" expected to be of type "string"';
    {
      iam_service_role_arn: converted,
    }
  ),
  "#withIdentityCenterInstanceArn":: "ARN of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application",
  withIdentityCenterInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_center_instance_arn" expected to be of type "string"';
    {
      identity_center_instance_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  attachments_configuration:: {
    local block = self,
    new(attachmentsControlMode):: (
      {}
      + block.withAttachmentsControlMode(attachmentsControlMode)
    ),
    "#withAttachmentsControlMode":: "Status information about whether file upload functionality is activated or deactivated for your end user.",
    withAttachmentsControlMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"attachments_control_mode" expected to be of type "string"';
      {
        attachments_control_mode: converted,
      }
    ),
  },
  encryption_configuration:: {
    local block = self,
    new(kmsKeyId):: (
      {}
      + block.withKmsKeyId(kmsKeyId)
    ),
    "#withKmsKeyId":: "The identifier of the AWS KMS key that is used to encrypt your data. Amazon Q doesn't support asymmetric keys.",
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAttachmentsConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_configuration: value,
    }
  ),
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAttachmentsConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_configuration+: converted,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
}
