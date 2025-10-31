{
  local block = self,
  new(terraformName, networkInsightsPathId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_network_insights_analysis",
          type:: "resource",
          attributes:: ["alternate_path_hints", "arn", "explanations", "filter_in_arns", "forward_path_components", "id", "network_insights_path_id", "path_found", "region", "return_path_components", "start_date", "status", "status_message", "tags", "tags_all", "wait_for_completion", "warning_message"],
        },
      },
    }
    + block.withNetworkInsightsPathId(networkInsightsPathId)
  ),
  withFilterInArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"filter_in_arns" expected to be of type "set"';
    {
      filter_in_arns: converted,
    }
  ),
  withFilterInArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"filter_in_arns" expected to be of type "set"';
    {
      filter_in_arns+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNetworkInsightsPathId(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_insights_path_id" expected to be of type "string"';
    {
      network_insights_path_id: converted,
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
  withWaitForCompletion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_completion" expected to be of type "bool"';
    {
      wait_for_completion: converted,
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
