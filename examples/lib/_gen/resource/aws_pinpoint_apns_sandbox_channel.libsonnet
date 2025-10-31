{
  local block = self,
  new(terraformName, applicationId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pinpoint_apns_sandbox_channel",
          type:: "resource",
          attributes:: ["application_id", "bundle_id", "certificate", "default_authentication_method", "enabled", "id", "private_key", "region", "team_id", "token_key", "token_key_id"],
        },
      },
    }
    + block.withApplicationId(applicationId)
  ),
  withApplicationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_id" expected to be of type "string"';
    {
      application_id: converted,
    }
  ),
  withBundleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  withCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  withDefaultAuthenticationMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_authentication_method" expected to be of type "string"';
    {
      default_authentication_method: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrivateKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
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
  withTeamId(value):: (
    local converted = value;
    assert std.isString(converted) : '"team_id" expected to be of type "string"';
    {
      team_id: converted,
    }
  ),
  withTokenKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_key" expected to be of type "string"';
    {
      token_key: converted,
    }
  ),
  withTokenKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_key_id" expected to be of type "string"';
    {
      token_key_id: converted,
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
