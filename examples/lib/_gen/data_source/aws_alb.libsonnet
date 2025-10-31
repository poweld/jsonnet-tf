{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_alb",
          type:: "data",
          attributes:: ["access_logs", "arn", "arn_suffix", "client_keep_alive", "connection_logs", "customer_owned_ipv4_pool", "desync_mitigation_mode", "dns_name", "dns_record_client_routing_policy", "drop_invalid_header_fields", "enable_cross_zone_load_balancing", "enable_deletion_protection", "enable_http2", "enable_tls_version_and_cipher_suite_headers", "enable_waf_fail_open", "enable_xff_client_port", "enable_zonal_shift", "enforce_security_group_inbound_rules_on_private_link_traffic", "id", "idle_timeout", "internal", "ip_address_type", "ipam_pools", "load_balancer_type", "name", "preserve_host_header", "region", "security_groups", "subnet_mapping", "subnets", "tags", "vpc_id", "xff_header_processing_mode", "zone_id"],
        },
      },
    }
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
