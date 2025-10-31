{
  local block = self,
  new(terraformName, baseModelName, languageCode, modelName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transcribe_language_model",
          type:: "resource",
          attributes:: ["arn", "base_model_name", "id", "language_code", "model_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withBaseModelName(baseModelName)
    + block.withLanguageCode(languageCode)
    + block.withModelName(modelName)
  ),
  withBaseModelName(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_model_name" expected to be of type "string"';
    {
      base_model_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLanguageCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
    }
  ),
  withModelName(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_name" expected to be of type "string"';
    {
      model_name: converted,
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
  input_data_config:: {
    local block = self,
    new(dataAccessRoleArn, s3Uri):: (
      {}
      + block.withDataAccessRoleArn(dataAccessRoleArn)
      + block.withS3Uri(s3Uri)
    ),
    withDataAccessRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_access_role_arn" expected to be of type "string"';
      {
        data_access_role_arn: converted,
      }
    ),
    withS3Uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
      {
        s3_uri: converted,
      }
    ),
    withTuningDataS3Uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"tuning_data_s3_uri" expected to be of type "string"';
      {
        tuning_data_s3_uri: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withInputDataConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withInputDataConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config+: converted,
    }
  ),
}
