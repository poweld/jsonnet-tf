{
  local block = self,
  new(terraformName, domain):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codeartifact_domain_permissions_policy",
          type:: "resource",
          attributes:: ["domain", "domain_owner", "id", "policy_document", "policy_revision", "region", "resource_arn"],
        },
      },
    }
    + block.withDomain(domain)
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withDomainOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_owner" expected to be of type "string"';
    {
      domain_owner: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPolicyDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
    }
  ),
  withPolicyRevision(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_revision" expected to be of type "string"';
    {
      policy_revision: converted,
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
}
