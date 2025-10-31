{
  local block = self,
  new(terraformName, resourceSetName, resourceSetType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53recoveryreadiness_resource_set",
          type:: "resource",
          attributes:: ["arn", "id", "resource_set_name", "resource_set_type", "tags", "tags_all"],
        },
      },
    }
    + block.withResourceSetName(resourceSetName)
    + block.withResourceSetType(resourceSetType)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withResourceSetName(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_name" expected to be of type "string"';
    {
      resource_set_name: converted,
    }
  ),
  withResourceSetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_type" expected to be of type "string"';
    {
      resource_set_type: converted,
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
  resources:: {
    local block = self,
    new():: (
      {}
    ),
    withReadinessScopes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"readiness_scopes" expected to be of type "list"';
      {
        readiness_scopes: converted,
      }
    ),
    withReadinessScopesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"readiness_scopes" expected to be of type "list"';
      {
        readiness_scopes+: converted,
      }
    ),
    withResourceArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
      {
        resource_arn: converted,
      }
    ),
    dns_target_resource:: {
      local block = self,
      new(domainName):: (
        {}
        + block.withDomainName(domainName)
      ),
      withDomainName(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_name" expected to be of type "string"';
        {
          domain_name: converted,
        }
      ),
      withHostedZoneArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"hosted_zone_arn" expected to be of type "string"';
        {
          hosted_zone_arn: converted,
        }
      ),
      withRecordSetId(value):: (
        local converted = value;
        assert std.isString(converted) : '"record_set_id" expected to be of type "string"';
        {
          record_set_id: converted,
        }
      ),
      withRecordType(value):: (
        local converted = value;
        assert std.isString(converted) : '"record_type" expected to be of type "string"';
        {
          record_type: converted,
        }
      ),
      target_resource:: {
        local block = self,
        new():: (
          {}
        ),
        nlb_resource:: {
          local block = self,
          new():: (
            {}
          ),
          withArn(value):: (
            local converted = value;
            assert std.isString(converted) : '"arn" expected to be of type "string"';
            {
              arn: converted,
            }
          ),
        },
        r53_resource:: {
          local block = self,
          new():: (
            {}
          ),
          withDomainName(value):: (
            local converted = value;
            assert std.isString(converted) : '"domain_name" expected to be of type "string"';
            {
              domain_name: converted,
            }
          ),
          withRecordSetId(value):: (
            local converted = value;
            assert std.isString(converted) : '"record_set_id" expected to be of type "string"';
            {
              record_set_id: converted,
            }
          ),
        },
        withNlbResource(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nlb_resource: value,
          }
        ),
        withR53Resource(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            r53_resource: value,
          }
        ),
        withNlbResourceMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            nlb_resource+: converted,
          }
        ),
        withR53ResourceMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            r53_resource+: converted,
          }
        ),
      },
      withTargetResource(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_resource: value,
        }
      ),
      withTargetResourceMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_resource+: converted,
        }
      ),
    },
    withDnsTargetResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_target_resource: value,
      }
    ),
    withDnsTargetResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_target_resource+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withResources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resources: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withResourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resources+: converted,
    }
  ),
}
