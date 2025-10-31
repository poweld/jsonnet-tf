{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudsearch_domain",
          type:: "resource",
          attributes:: ["arn", "document_service_endpoint", "domain_id", "id", "multi_az", "name", "region", "search_service_endpoint"],
        },
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMultiAz(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  endpoint_options:: {
    local block = self,
    new():: (
      {}
    ),
    withEnforceHttps(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enforce_https" expected to be of type "bool"';
      {
        enforce_https: converted,
      }
    ),
    withTlsSecurityPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_security_policy" expected to be of type "string"';
      {
        tls_security_policy: converted,
      }
    ),
  },
  index_field:: {
    local block = self,
    new(name, type):: (
      {}
      + block.withName(name)
      + block.withType(type)
    ),
    withAnalysisScheme(value):: (
      local converted = value;
      assert std.isString(converted) : '"analysis_scheme" expected to be of type "string"';
      {
        analysis_scheme: converted,
      }
    ),
    withDefaultValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_value" expected to be of type "string"';
      {
        default_value: converted,
      }
    ),
    withFacet(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"facet" expected to be of type "bool"';
      {
        facet: converted,
      }
    ),
    withHighlight(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"highlight" expected to be of type "bool"';
      {
        highlight: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withReturn(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"return" expected to be of type "bool"';
      {
        return: converted,
      }
    ),
    withSearch(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"search" expected to be of type "bool"';
      {
        search: converted,
      }
    ),
    withSort(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"sort" expected to be of type "bool"';
      {
        sort: converted,
      }
    ),
    withSourceFields(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_fields" expected to be of type "string"';
      {
        source_fields: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  scaling_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    withDesiredInstanceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"desired_instance_type" expected to be of type "string"';
      {
        desired_instance_type: converted,
      }
    ),
    withDesiredPartitionCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_partition_count" expected to be of type "number"';
      {
        desired_partition_count: converted,
      }
    ),
    withDesiredReplicationCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_replication_count" expected to be of type "number"';
      {
        desired_replication_count: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withEndpointOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_options: value,
    }
  ),
  withIndexField(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_field: value,
    }
  ),
  withScalingParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_parameters: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withEndpointOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_options+: converted,
    }
  ),
  withIndexFieldMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_field+: converted,
    }
  ),
  withScalingParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_parameters+: converted,
    }
  ),
}
