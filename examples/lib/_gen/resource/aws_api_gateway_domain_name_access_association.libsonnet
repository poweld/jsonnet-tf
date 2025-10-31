{
  local block = self,
  new(terraformName, accessAssociationSource, accessAssociationSourceType, domainNameArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_api_gateway_domain_name_access_association",
          type:: "resource",
          attributes:: ["access_association_source", "access_association_source_type", "arn", "domain_name_arn", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAccessAssociationSource(accessAssociationSource)
    + block.withAccessAssociationSourceType(accessAssociationSourceType)
    + block.withDomainNameArn(domainNameArn)
  ),
  withAccessAssociationSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_association_source" expected to be of type "string"';
    {
      access_association_source: converted,
    }
  ),
  withAccessAssociationSourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_association_source_type" expected to be of type "string"';
    {
      access_association_source_type: converted,
    }
  ),
  withDomainNameArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name_arn" expected to be of type "string"';
    {
      domain_name_arn: converted,
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
}
