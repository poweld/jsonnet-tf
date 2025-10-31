{
  local block = self,
  new(terraformName, firewallDomainListId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_resolver_firewall_domain_list",
          type:: "data",
          attributes:: ["arn", "creation_time", "creator_request_id", "domain_count", "firewall_domain_list_id", "id", "managed_owner_name", "modification_time", "name", "region", "status", "status_message"],
        },
      },
    }
    + block.withFirewallDomainListId(firewallDomainListId)
  ),
  withFirewallDomainListId(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_domain_list_id" expected to be of type "string"';
    {
      firewall_domain_list_id: converted,
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
}
