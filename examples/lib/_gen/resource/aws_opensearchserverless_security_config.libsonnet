{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearchserverless_security_config",
          type:: "resource",
          attributes:: ["config_version", "description", "id", "name", "region", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  "#withDescription":: "Description of the security configuration.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withName":: "Name of the policy.",
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
  "#withType":: "Type of configuration. Must be `saml`.",
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
  saml_options:: {
    local block = self,
    new(metadata):: (
      {}
      + block.withMetadata(metadata)
    ),
    "#withGroupAttribute":: "Group attribute for this SAML integration.",
    withGroupAttribute(value):: (
      local converted = value;
      assert std.isString(converted) : '"group_attribute" expected to be of type "string"';
      {
        group_attribute: converted,
      }
    ),
    "#withMetadata":: "The XML IdP metadata file generated from your identity provider.",
    withMetadata(value):: (
      local converted = value;
      assert std.isString(converted) : '"metadata" expected to be of type "string"';
      {
        metadata: converted,
      }
    ),
    "#withSessionTimeout":: "Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.",
    withSessionTimeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"session_timeout" expected to be of type "number"';
      {
        session_timeout: converted,
      }
    ),
    "#withUserAttribute":: "User attribute for this SAML integration.",
    withUserAttribute(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_attribute" expected to be of type "string"';
      {
        user_attribute: converted,
      }
    ),
  },
  withSamlOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options: value,
    }
  ),
  withSamlOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options+: converted,
    }
  ),
}
