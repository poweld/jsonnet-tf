{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_service",
          type:: "data",
          attributes:: ["dns_name", "id", "partition", "region", "reverse_dns_name", "reverse_dns_prefix", "service_id", "supported"],
        },
      },
    }
  ),
  withDnsName(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
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
  withReverseDnsName(value):: (
    local converted = value;
    assert std.isString(converted) : '"reverse_dns_name" expected to be of type "string"';
    {
      reverse_dns_name: converted,
    }
  ),
  withReverseDnsPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"reverse_dns_prefix" expected to be of type "string"';
    {
      reverse_dns_prefix: converted,
    }
  ),
  withServiceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_id" expected to be of type "string"';
    {
      service_id: converted,
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
