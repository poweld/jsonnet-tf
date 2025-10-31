{
  local block = self,
  new(terraformName, cacheNodeType, duration, offeringType, productDescription):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_reserved_cache_node_offering",
          type:: "data",
          attributes:: ["cache_node_type", "duration", "fixed_price", "offering_id", "offering_type", "product_description", "region"],
        },
      },
    }
    + block.withCacheNodeType(cacheNodeType)
    + block.withDuration(duration)
    + block.withOfferingType(offeringType)
    + block.withProductDescription(productDescription)
  ),
  withCacheNodeType(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_node_type" expected to be of type "string"';
    {
      cache_node_type: converted,
    }
  ),
  withDuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"duration" expected to be of type "string"';
    {
      duration: converted,
    }
  ),
  withOfferingType(value):: (
    local converted = value;
    assert std.isString(converted) : '"offering_type" expected to be of type "string"';
    {
      offering_type: converted,
    }
  ),
  withProductDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_description" expected to be of type "string"';
    {
      product_description: converted,
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
