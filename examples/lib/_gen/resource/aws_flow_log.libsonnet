{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_flow_log",
          type:: "resource",
          attributes:: ["arn", "deliver_cross_account_role", "eni_id", "iam_role_arn", "id", "log_destination", "log_destination_type", "log_format", "max_aggregation_interval", "region", "subnet_id", "tags", "tags_all", "traffic_type", "transit_gateway_attachment_id", "transit_gateway_id", "vpc_id"],
        },
      },
    }
  ),
  withDeliverCrossAccountRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"deliver_cross_account_role" expected to be of type "string"';
    {
      deliver_cross_account_role: converted,
    }
  ),
  withEniId(value):: (
    local converted = value;
    assert std.isString(converted) : '"eni_id" expected to be of type "string"';
    {
      eni_id: converted,
    }
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLogDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_destination" expected to be of type "string"';
    {
      log_destination: converted,
    }
  ),
  withLogDestinationType(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_destination_type" expected to be of type "string"';
    {
      log_destination_type: converted,
    }
  ),
  withLogFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_format" expected to be of type "string"';
    {
      log_format: converted,
    }
  ),
  withMaxAggregationInterval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_aggregation_interval" expected to be of type "number"';
    {
      max_aggregation_interval: converted,
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
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  withTrafficType(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_type" expected to be of type "string"';
    {
      traffic_type: converted,
    }
  ),
  withTransitGatewayAttachmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  withTransitGatewayId(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  withVpcId(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  destination_options:: {
    local block = self,
    new():: (
      {}
    ),
    withFileFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_format" expected to be of type "string"';
      {
        file_format: converted,
      }
    ),
    withHiveCompatiblePartitions(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"hive_compatible_partitions" expected to be of type "bool"';
      {
        hive_compatible_partitions: converted,
      }
    ),
    withPerHourPartition(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"per_hour_partition" expected to be of type "bool"';
      {
        per_hour_partition: converted,
      }
    ),
  },
  withDestinationOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_options: value,
    }
  ),
  withDestinationOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_options+: converted,
    }
  ),
}
