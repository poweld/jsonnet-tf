{
  local block = self,
  new(terraformName, connectionAlias):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearch_outbound_connection",
          type:: "resource",
          attributes:: ["accept_connection", "connection_alias", "connection_mode", "connection_status", "id", "region"],
        },
      },
    }
    + block.withConnectionAlias(connectionAlias)
  ),
  withAcceptConnection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"accept_connection" expected to be of type "bool"';
    {
      accept_connection: converted,
    }
  ),
  withConnectionAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_alias" expected to be of type "string"';
    {
      connection_alias: converted,
    }
  ),
  withConnectionMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_mode" expected to be of type "string"';
    {
      connection_mode: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  connection_properties:: {
    local block = self,
    new():: (
      {}
    ),
    cross_cluster_search:: {
      local block = self,
      new():: (
        {}
      ),
      withSkipUnavailable(value):: (
        local converted = value;
        assert std.isString(converted) : '"skip_unavailable" expected to be of type "string"';
        {
          skip_unavailable: converted,
        }
      ),
    },
    withCrossClusterSearch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cross_cluster_search: value,
      }
    ),
    withCrossClusterSearchMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cross_cluster_search+: converted,
      }
    ),
  },
  local_domain_info:: {
    local block = self,
    new(domainName, ownerId, region):: (
      {}
      + block.withDomainName(domainName)
      + block.withOwnerId(ownerId)
      + block.withRegion(region)
    ),
    withDomainName(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    withOwnerId(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_id" expected to be of type "string"';
      {
        owner_id: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  remote_domain_info:: {
    local block = self,
    new(domainName, ownerId, region):: (
      {}
      + block.withDomainName(domainName)
      + block.withOwnerId(ownerId)
      + block.withRegion(region)
    ),
    withDomainName(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    withOwnerId(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner_id" expected to be of type "string"';
      {
        owner_id: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withConnectionProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_properties: value,
    }
  ),
  withLocalDomainInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_domain_info: value,
    }
  ),
  withRemoteDomainInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_domain_info: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConnectionPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connection_properties+: converted,
    }
  ),
  withLocalDomainInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      local_domain_info+: converted,
    }
  ),
  withRemoteDomainInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      remote_domain_info+: converted,
    }
  ),
}
