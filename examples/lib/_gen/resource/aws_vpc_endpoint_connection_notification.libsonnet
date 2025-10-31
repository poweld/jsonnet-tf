{
  local block = self,
  new(terraformName, connectionEvents, connectionNotificationArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_vpc_endpoint_connection_notification",
          type:: "resource",
          attributes:: ["connection_events", "connection_notification_arn", "id", "notification_type", "region", "state", "vpc_endpoint_id", "vpc_endpoint_service_id"],
        },
      },
    }
    + block.withConnectionEvents(connectionEvents)
    + block.withConnectionNotificationArn(connectionNotificationArn)
  ),
  withConnectionEvents(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"connection_events" expected to be of type "set"';
    {
      connection_events: converted,
    }
  ),
  withConnectionEventsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"connection_events" expected to be of type "set"';
    {
      connection_events+: converted,
    }
  ),
  withConnectionNotificationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_notification_arn" expected to be of type "string"';
    {
      connection_notification_arn: converted,
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
  withVpcEndpointId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
    {
      vpc_endpoint_id: converted,
    }
  ),
  withVpcEndpointServiceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_service_id" expected to be of type "string"';
    {
      vpc_endpoint_service_id: converted,
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
