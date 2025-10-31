{
  local block = self,
  new(terraformName, domain, format, repository):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codeartifact_repository_endpoint",
          type:: "data",
          attributes:: ["domain", "domain_owner", "format", "id", "region", "repository", "repository_endpoint"],
        },
      },
    }
    + block.withDomain(domain)
    + block.withFormat(format)
    + block.withRepository(repository)
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
  withFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"format" expected to be of type "string"';
    {
      format: converted,
    }
  ),
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
  withRepository(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository" expected to be of type "string"';
    {
      repository: converted,
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
