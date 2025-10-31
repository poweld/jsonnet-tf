{
  local block = self,
  new(terraformName, apiId, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_base_path_mapping",
          type:: "resource",
          attributes:: ["api_id", "base_path", "domain_name", "domain_name_id", "id", "region", "stage_name"],
        },
      },
    }
    + block.withApiId(apiId)
    + block.withDomainName(domainName)
  ),
  withApiId(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  withBasePath(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_path" expected to be of type "string"';
    {
      base_path: converted,
    }
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withDomainNameId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name_id" expected to be of type "string"';
    {
      domain_name_id: converted,
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
  withStageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
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
