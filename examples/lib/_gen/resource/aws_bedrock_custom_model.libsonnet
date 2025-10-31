{
  local block = self,
  new(terraformName, baseModelIdentifier, customModelName, hyperparameters, jobName, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_custom_model",
          type:: "resource",
          attributes:: ["base_model_identifier", "custom_model_arn", "custom_model_kms_key_id", "custom_model_name", "customization_type", "hyperparameters", "id", "job_arn", "job_name", "job_status", "region", "role_arn", "tags", "tags_all", "training_metrics", "validation_metrics"],
        },
      },
    }
    + block.withBaseModelIdentifier(baseModelIdentifier)
    + block.withCustomModelName(customModelName)
    + block.withHyperparameters(hyperparameters)
    + block.withJobName(jobName)
    + block.withRoleArn(roleArn)
  ),
  withBaseModelIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_model_identifier" expected to be of type "string"';
    {
      base_model_identifier: converted,
    }
  ),
  withCustomModelKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_model_kms_key_id" expected to be of type "string"';
    {
      custom_model_kms_key_id: converted,
    }
  ),
  withCustomModelName(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_model_name" expected to be of type "string"';
    {
      custom_model_name: converted,
    }
  ),
  withCustomizationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"customization_type" expected to be of type "string"';
    {
      customization_type: converted,
    }
  ),
  withHyperparameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"hyperparameters" expected to be of type "map"';
    {
      hyperparameters: converted,
    }
  ),
  withJobName(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_name" expected to be of type "string"';
    {
      job_name: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  output_data_config:: {
    local block = self,
    new(s3Uri):: (
      {}
      + block.withS3Uri(s3Uri)
    ),
    withS3Uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
      {
        s3_uri: converted,
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
  },
  training_data_config:: {
    local block = self,
    new(s3Uri):: (
      {}
      + block.withS3Uri(s3Uri)
    ),
    withS3Uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
      {
        s3_uri: converted,
      }
    ),
  },
  validation_data_config:: {
    local block = self,
    new():: (
      {}
    ),
    validator:: {
      local block = self,
      new(s3Uri):: (
        {}
        + block.withS3Uri(s3Uri)
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
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
  },
  vpc_config:: {
    local block = self,
    new(securityGroupIds, subnetIds):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnetIds(subnetIds)
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
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
  },
  withOutputDataConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_data_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTrainingDataConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      training_data_config: value,
    }
  ),
  withValidationDataConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_data_config: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withOutputDataConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output_data_config+: converted,
    }
  ),
  withTrainingDataConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      training_data_config+: converted,
    }
  ),
  withValidationDataConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_data_config+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
