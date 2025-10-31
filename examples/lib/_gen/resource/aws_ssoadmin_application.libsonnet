{
  local block = self,
  new(terraformName, applicationProviderArn, instanceArn, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_application",
          type:: "resource",
          attributes:: ["application_account", "application_arn", "application_provider_arn", "arn", "client_token", "description", "id", "instance_arn", "name", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withApplicationProviderArn(applicationProviderArn)
    + block.withInstanceArn(instanceArn)
    + block.withName(name)
  ),
  withApplicationProviderArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_provider_arn" expected to be of type "string"';
    {
      application_provider_arn: converted,
    }
  ),
  withClientToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_token" expected to be of type "string"';
    {
      client_token: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
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
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  portal_options:: {
    local block = self,
    new():: (
      {}
    ),
    withVisibility(value):: (
      local converted = value;
      assert std.isString(converted) : '"visibility" expected to be of type "string"';
      {
        visibility: converted,
      }
    ),
    sign_in_options:: {
      local block = self,
      new(origin):: (
        {}
        + block.withOrigin(origin)
      ),
      withApplicationUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"application_url" expected to be of type "string"';
        {
          application_url: converted,
        }
      ),
      withOrigin(value):: (
        local converted = value;
        assert std.isString(converted) : '"origin" expected to be of type "string"';
        {
          origin: converted,
        }
      ),
    },
    withSignInOptions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sign_in_options: value,
      }
    ),
    withSignInOptionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sign_in_options+: converted,
      }
    ),
  },
  withPortalOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      portal_options: value,
    }
  ),
  withPortalOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      portal_options+: converted,
    }
  ),
}
