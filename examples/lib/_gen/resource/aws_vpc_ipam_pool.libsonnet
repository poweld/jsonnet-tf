{
  local block = self,
  new(terraformName, addressFamily, ipamScopeId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_ipam_pool",
          type:: "resource",
          attributes:: ["address_family", "allocation_default_netmask_length", "allocation_max_netmask_length", "allocation_min_netmask_length", "allocation_resource_tags", "arn", "auto_import", "aws_service", "cascade", "description", "id", "ipam_scope_id", "ipam_scope_type", "locale", "pool_depth", "public_ip_source", "publicly_advertisable", "region", "source_ipam_pool_id", "state", "tags", "tags_all"],
        },
      },
    }
    + block.withAddressFamily(addressFamily)
    + block.withIpamScopeId(ipamScopeId)
  ),
  withAddressFamily(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_family" expected to be of type "string"';
    {
      address_family: converted,
    }
  ),
  withAllocationDefaultNetmaskLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocation_default_netmask_length" expected to be of type "number"';
    {
      allocation_default_netmask_length: converted,
    }
  ),
  withAllocationMaxNetmaskLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocation_max_netmask_length" expected to be of type "number"';
    {
      allocation_max_netmask_length: converted,
    }
  ),
  withAllocationMinNetmaskLength(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocation_min_netmask_length" expected to be of type "number"';
    {
      allocation_min_netmask_length: converted,
    }
  ),
  withAllocationResourceTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"allocation_resource_tags" expected to be of type "map"';
    {
      allocation_resource_tags: converted,
    }
  ),
  withAutoImport(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_import" expected to be of type "bool"';
    {
      auto_import: converted,
    }
  ),
  withAwsService(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_service" expected to be of type "string"';
    {
      aws_service: converted,
    }
  ),
  withCascade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cascade" expected to be of type "bool"';
    {
      cascade: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpamScopeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipam_scope_id" expected to be of type "string"';
    {
      ipam_scope_id: converted,
    }
  ),
  withLocale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  withPublicIpSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ip_source" expected to be of type "string"';
    {
      public_ip_source: converted,
    }
  ),
  withPubliclyAdvertisable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_advertisable" expected to be of type "bool"';
    {
      publicly_advertisable: converted,
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
  withSourceIpamPoolId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_ipam_pool_id" expected to be of type "string"';
    {
      source_ipam_pool_id: converted,
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
