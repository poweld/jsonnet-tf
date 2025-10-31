{
  local block = self,
  new(terraformName, sourceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securitylake_custom_log_source",
          type:: "resource",
          attributes:: ["attributes", "event_classes", "id", "provider_details", "region", "source_name", "source_version"],
        },
      },
    }
    + block.withSourceName(sourceName)
  ),
  withEventClasses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_classes" expected to be of type "set"';
    {
      event_classes: converted,
    }
  ),
  withEventClassesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"event_classes" expected to be of type "set"';
    {
      event_classes+: converted,
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
  withSourceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_name" expected to be of type "string"';
    {
      source_name: converted,
    }
  ),
  withSourceVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_version" expected to be of type "string"';
    {
      source_version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    crawler_configuration:: {
      local block = self,
      new(roleArn):: (
        {}
        + block.withRoleArn(roleArn)
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
    },
    provider_identity:: {
      local block = self,
      new(externalId, principal):: (
        {}
        + block.withExternalId(externalId)
        + block.withPrincipal(principal)
      ),
      withExternalId(value):: (
        local converted = value;
        assert std.isString(converted) : '"external_id" expected to be of type "string"';
        {
          external_id: converted,
        }
      ),
      withPrincipal(value):: (
        local converted = value;
        assert std.isString(converted) : '"principal" expected to be of type "string"';
        {
          principal: converted,
        }
      ),
    },
    withCrawlerConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crawler_configuration: value,
      }
    ),
    withProviderIdentity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider_identity: value,
      }
    ),
    withCrawlerConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crawler_configuration+: converted,
      }
    ),
    withProviderIdentityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider_identity+: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
