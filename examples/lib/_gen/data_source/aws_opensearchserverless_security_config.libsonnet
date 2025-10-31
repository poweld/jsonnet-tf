{
  local block = self,
  new(terraformName, id):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearchserverless_security_config",
          type:: "data",
          attributes:: ["config_version", "created_date", "description", "id", "last_modified_date", "region", "type"],
        },
      },
    }
    + block.withId(id)
  ),
  "#withId":: "The unique identifier of the security configuration.",
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  saml_options:: {
    local block = self,
    new():: (
      {}
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
