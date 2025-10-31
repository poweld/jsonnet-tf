{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_config_organization_conformance_pack",
          type:: "resource",
          attributes:: ["arn", "delivery_s3_bucket", "delivery_s3_key_prefix", "excluded_accounts", "id", "name", "region", "template_body", "template_s3_uri"],
        },
      },
    }
    + block.withName(name)
  ),
  withDeliveryS3Bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_s3_bucket" expected to be of type "string"';
    {
      delivery_s3_bucket: converted,
    }
  ),
  withDeliveryS3KeyPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"delivery_s3_key_prefix" expected to be of type "string"';
    {
      delivery_s3_key_prefix: converted,
    }
  ),
  withExcludedAccounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts: converted,
    }
  ),
  withExcludedAccountsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTemplateBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_body" expected to be of type "string"';
    {
      template_body: converted,
    }
  ),
  withTemplateS3Uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_s3_uri" expected to be of type "string"';
    {
      template_s3_uri: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  input_parameter:: {
    local block = self,
    new(parameterName, parameterValue):: (
      {}
      + block.withParameterName(parameterName)
      + block.withParameterValue(parameterValue)
    ),
    withParameterName(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_name" expected to be of type "string"';
      {
        parameter_name: converted,
      }
    ),
    withParameterValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
      {
        parameter_value: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withInputParameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_parameter: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withInputParameterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_parameter+: converted,
    }
  ),
}
