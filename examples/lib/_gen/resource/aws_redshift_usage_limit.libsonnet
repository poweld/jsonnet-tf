{
  local block = self,
  new(terraformName, amount, clusterIdentifier, featureType, limitType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_usage_limit",
          type:: "resource",
          attributes:: ["amount", "arn", "breach_action", "cluster_identifier", "feature_type", "id", "limit_type", "period", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAmount(amount)
    + block.withClusterIdentifier(clusterIdentifier)
    + block.withFeatureType(featureType)
    + block.withLimitType(limitType)
  ),
  withAmount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"amount" expected to be of type "number"';
    {
      amount: converted,
    }
  ),
  withBreachAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"breach_action" expected to be of type "string"';
    {
      breach_action: converted,
    }
  ),
  withClusterIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  withFeatureType(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_type" expected to be of type "string"';
    {
      feature_type: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLimitType(value):: (
    local converted = value;
    assert std.isString(converted) : '"limit_type" expected to be of type "string"';
    {
      limit_type: converted,
    }
  ),
  withPeriod(value):: (
    local converted = value;
    assert std.isString(converted) : '"period" expected to be of type "string"';
    {
      period: converted,
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
