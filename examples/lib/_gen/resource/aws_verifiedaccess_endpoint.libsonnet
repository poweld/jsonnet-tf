{
  local block = self,
  new(terraformName, attachmentType, endpointType, verifiedAccessGroupId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedaccess_endpoint",
          type:: "resource",
          attributes:: ["application_domain", "attachment_type", "description", "device_validation_domain", "domain_certificate_arn", "endpoint_domain", "endpoint_domain_prefix", "endpoint_type", "id", "policy_document", "region", "security_group_ids", "tags", "tags_all", "verified_access_group_id", "verified_access_instance_id"],
        },
      },
    }
    + block.withAttachmentType(attachmentType)
    + block.withEndpointType(endpointType)
    + block.withVerifiedAccessGroupId(verifiedAccessGroupId)
  ),
  withApplicationDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_domain" expected to be of type "string"';
    {
      application_domain: converted,
    }
  ),
  withAttachmentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"attachment_type" expected to be of type "string"';
    {
      attachment_type: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDomainCertificateArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_certificate_arn" expected to be of type "string"';
    {
      domain_certificate_arn: converted,
    }
  ),
  withEndpointDomainPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_domain_prefix" expected to be of type "string"';
    {
      endpoint_domain_prefix: converted,
    }
  ),
  withEndpointType(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  withSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
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
  withVerifiedAccessGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"verified_access_group_id" expected to be of type "string"';
    {
      verified_access_group_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cidr_options:: {
    local block = self,
    new(cidr):: (
      {}
      + block.withCidr(cidr)
    ),
    withCidr(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr" expected to be of type "string"';
      {
        cidr: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    port_range:: {
      local block = self,
      new(fromPort, toPort):: (
        {}
        + block.withFromPort(fromPort)
        + block.withToPort(toPort)
      ),
      withFromPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      withToPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    withPortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    withPortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
  },
  load_balancer_options:: {
    local block = self,
    new():: (
      {}
    ),
    withLoadBalancerArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"load_balancer_arn" expected to be of type "string"';
      {
        load_balancer_arn: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    port_range:: {
      local block = self,
      new(fromPort, toPort):: (
        {}
        + block.withFromPort(fromPort)
        + block.withToPort(toPort)
      ),
      withFromPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      withToPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    withPortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    withPortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
  },
  network_interface_options:: {
    local block = self,
    new():: (
      {}
    ),
    withNetworkInterfaceId(value):: (
      local converted = value;
      assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
      {
        network_interface_id: converted,
      }
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    port_range:: {
      local block = self,
      new(fromPort, toPort):: (
        {}
        + block.withFromPort(fromPort)
        + block.withToPort(toPort)
      ),
      withFromPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
        {
          from_port: converted,
        }
      ),
      withToPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
        {
          to_port: converted,
        }
      ),
    },
    withPortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    withPortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
  },
  rds_options:: {
    local block = self,
    new():: (
      {}
    ),
    withPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    withRdsDbClusterArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_db_cluster_arn" expected to be of type "string"';
      {
        rds_db_cluster_arn: converted,
      }
    ),
    withRdsDbInstanceArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_db_instance_arn" expected to be of type "string"';
      {
        rds_db_instance_arn: converted,
      }
    ),
    withRdsDbProxyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_db_proxy_arn" expected to be of type "string"';
      {
        rds_db_proxy_arn: converted,
      }
    ),
    withRdsEndpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds_endpoint" expected to be of type "string"';
      {
        rds_endpoint: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  sse_specification:: {
    local block = self,
    new():: (
      {}
    ),
    withCustomerManagedKeyEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"customer_managed_key_enabled" expected to be of type "bool"';
      {
        customer_managed_key_enabled: converted,
      }
    ),
    withKmsKeyArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
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
  withCidrOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_options: value,
    }
  ),
  withLoadBalancerOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_options: value,
    }
  ),
  withNetworkInterfaceOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface_options: value,
    }
  ),
  withRdsOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rds_options: value,
    }
  ),
  withSseSpecification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCidrOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cidr_options+: converted,
    }
  ),
  withLoadBalancerOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_options+: converted,
    }
  ),
  withNetworkInterfaceOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interface_options+: converted,
    }
  ),
  withRdsOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rds_options+: converted,
    }
  ),
  withSseSpecificationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification+: converted,
    }
  ),
}
