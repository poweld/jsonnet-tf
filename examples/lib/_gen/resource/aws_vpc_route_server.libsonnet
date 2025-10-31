{
  local block = self,
  new(terraformName, amazonSideAsn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_route_server",
          type:: "resource",
          attributes:: ["amazon_side_asn", "arn", "persist_routes", "persist_routes_duration", "region", "route_server_id", "sns_notifications_enabled", "sns_topic_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withAmazonSideAsn(amazonSideAsn)
  ),
  withAmazonSideAsn(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"amazon_side_asn" expected to be of type "number"';
    {
      amazon_side_asn: converted,
    }
  ),
  withPersistRoutes(value):: (
    local converted = value;
    assert std.isString(converted) : '"persist_routes" expected to be of type "string"';
    {
      persist_routes: converted,
    }
  ),
  withPersistRoutesDuration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"persist_routes_duration" expected to be of type "number"';
    {
      persist_routes_duration: converted,
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
  withSnsNotificationsEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sns_notifications_enabled" expected to be of type "bool"';
    {
      sns_notifications_enabled: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
