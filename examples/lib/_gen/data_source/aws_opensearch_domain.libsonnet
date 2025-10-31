{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_opensearch_domain",
          type:: "data",
          attributes:: ["access_policies", "advanced_options", "advanced_security_options", "arn", "auto_tune_options", "cluster_config", "cognito_options", "created", "dashboard_endpoint", "dashboard_endpoint_v2", "deleted", "domain_endpoint_v2_hosted_zone_id", "domain_id", "domain_name", "ebs_options", "encryption_at_rest", "endpoint", "endpoint_v2", "engine_version", "id", "ip_address_type", "log_publishing_options", "node_to_node_encryption", "processing", "region", "snapshot_options", "software_update_options", "tags", "vpc_options"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  off_peak_window_options:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withOffPeakWindowOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      off_peak_window_options: value,
    }
  ),
  withOffPeakWindowOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      off_peak_window_options+: converted,
    }
  ),
}
