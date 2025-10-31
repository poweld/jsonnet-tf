{
  local block = self,
  new(terraformName, firewallArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkfirewall_logging_configuration",
          type:: "resource",
          attributes:: ["firewall_arn", "id", "region"],
        },
      },
    }
    + block.withFirewallArn(firewallArn)
  ),
  withFirewallArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_arn" expected to be of type "string"';
    {
      firewall_arn: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  logging_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    log_destination_config:: {
      local block = self,
      new(logDestination, logDestinationType, logType):: (
        {}
        + block.withLogDestination(logDestination)
        + block.withLogDestinationType(logDestinationType)
        + block.withLogType(logType)
      ),
      withLogDestination(value):: (
        local converted = value;
        assert std.isObject(converted) : '"log_destination" expected to be of type "map"';
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
      withLogType(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_type" expected to be of type "string"';
        {
          log_type: converted,
        }
      ),
    },
    withLogDestinationConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_destination_config: value,
      }
    ),
    withLogDestinationConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_destination_config+: converted,
      }
    ),
  },
  withLoggingConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration: value,
    }
  ),
  withLoggingConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_configuration+: converted,
    }
  ),
}
