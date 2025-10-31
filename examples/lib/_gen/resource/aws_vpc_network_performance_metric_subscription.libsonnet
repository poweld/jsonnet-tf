{
  local block = self,
  new(terraformName, destination, source):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_network_performance_metric_subscription",
          type:: "resource",
          attributes:: ["destination", "id", "metric", "period", "region", "source", "statistic"],
        },
      },
    }
    + block.withDestination(destination)
    + block.withSource(source)
  ),
  withDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMetric(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric" expected to be of type "string"';
    {
      metric: converted,
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
  withSource(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
    }
  ),
  withStatistic(value):: (
    local converted = value;
    assert std.isString(converted) : '"statistic" expected to be of type "string"';
    {
      statistic: converted,
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
