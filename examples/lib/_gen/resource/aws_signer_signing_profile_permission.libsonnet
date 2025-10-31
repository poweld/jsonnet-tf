{
  local block = self,
  new(terraformName, action, principal, profileName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_signer_signing_profile_permission",
          type:: "resource",
          attributes:: ["action", "id", "principal", "profile_name", "profile_version", "region", "statement_id", "statement_id_prefix"],
        },
      },
    }
    + block.withAction(action)
    + block.withPrincipal(principal)
    + block.withProfileName(profileName)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
    }
  ),
  withProfileName(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_name" expected to be of type "string"';
    {
      profile_name: converted,
    }
  ),
  withProfileVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_version" expected to be of type "string"';
    {
      profile_version: converted,
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
  withStatementId(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id" expected to be of type "string"';
    {
      statement_id: converted,
    }
  ),
  withStatementIdPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"statement_id_prefix" expected to be of type "string"';
    {
      statement_id_prefix: converted,
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
