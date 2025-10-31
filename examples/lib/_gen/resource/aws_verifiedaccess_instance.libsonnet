{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_verifiedaccess_instance",
          type:: "resource",
          attributes:: ["cidr_endpoints_custom_subdomain", "creation_time", "description", "fips_enabled", "id", "last_updated_time", "name_servers", "region", "tags", "tags_all", "verified_access_trust_providers"],
        },
      },
    }
  ),
  withCidrEndpointsCustomSubdomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_endpoints_custom_subdomain" expected to be of type "string"';
    {
      cidr_endpoints_custom_subdomain: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFipsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fips_enabled" expected to be of type "bool"';
    {
      fips_enabled: converted,
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
}
