{
  local block = self,
  new(terraformName, domain, repository):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codeartifact_repository",
          type:: "resource",
          attributes:: ["administrator_account", "arn", "description", "domain", "domain_owner", "id", "region", "repository", "tags", "tags_all"],
        },
      },
    }
    + block.withDomain(domain)
    + block.withRepository(repository)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
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
  external_connections:: {
    local block = self,
    new(externalConnectionName):: (
      {}
      + block.withExternalConnectionName(externalConnectionName)
    ),
    withExternalConnectionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_connection_name" expected to be of type "string"';
      {
        external_connection_name: converted,
      }
    ),
  },
  upstream:: {
    local block = self,
    new(repositoryName):: (
      {}
      + block.withRepositoryName(repositoryName)
    ),
    withRepositoryName(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_name" expected to be of type "string"';
      {
        repository_name: converted,
      }
    ),
  },
  withExternalConnections(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_connections: value,
    }
  ),
  withUpstream(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upstream: value,
    }
  ),
  withExternalConnectionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_connections+: converted,
    }
  ),
  withUpstreamMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      upstream+: converted,
    }
  ),
}
