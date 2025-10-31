{
  local block = self,
  new(terraformName, actions, certificateAuthorityArn, principal):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_acmpca_permission",
          type:: "resource",
          attributes:: ["actions", "certificate_authority_arn", "id", "policy", "principal", "region", "source_account"],
        },
      },
    }
    + block.withActions(actions)
    + block.withCertificateAuthorityArn(certificateAuthorityArn)
    + block.withPrincipal(principal)
  ),
  withActions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
    {
      actions: converted,
    }
  ),
  withActionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
    {
      actions+: converted,
    }
  ),
  withCertificateAuthorityArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
    {
      certificate_authority_arn: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSourceAccount(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_account" expected to be of type "string"';
    {
      source_account: converted,
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
