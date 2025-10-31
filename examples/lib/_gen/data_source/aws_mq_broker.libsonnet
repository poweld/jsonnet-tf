{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_mq_broker",
          type:: "data",
          attributes:: ["arn", "authentication_strategy", "auto_minor_version_upgrade", "broker_id", "broker_name", "configuration", "deployment_mode", "encryption_options", "engine_type", "engine_version", "host_instance_type", "id", "instances", "ldap_server_metadata", "logs", "maintenance_window_start_time", "publicly_accessible", "region", "security_groups", "storage_type", "subnet_ids", "tags", "user"],
        },
      },
    }
  ),
  withBrokerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"broker_id" expected to be of type "string"';
    {
      broker_id: converted,
    }
  ),
  withBrokerName(value):: (
    local converted = value;
    assert std.isString(converted) : '"broker_name" expected to be of type "string"';
    {
      broker_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
