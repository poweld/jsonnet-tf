{
  local block = self,
  new(terraformName, gatewayName, gatewayTimezone):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_gateway",
          type:: "resource",
          attributes:: ["activation_key", "arn", "average_download_rate_limit_in_bits_per_sec", "average_upload_rate_limit_in_bits_per_sec", "cloudwatch_log_group_arn", "ec2_instance_id", "endpoint_type", "gateway_id", "gateway_ip_address", "gateway_name", "gateway_network_interface", "gateway_timezone", "gateway_type", "gateway_vpc_endpoint", "host_environment", "id", "medium_changer_type", "region", "smb_file_share_visibility", "smb_guest_password", "smb_security_strategy", "tags", "tags_all", "tape_drive_type"],
        },
      },
    }
    + block.withGatewayName(gatewayName)
    + block.withGatewayTimezone(gatewayTimezone)
  ),
  withActivationKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"activation_key" expected to be of type "string"';
    {
      activation_key: converted,
    }
  ),
  withAverageDownloadRateLimitInBitsPerSec(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"average_download_rate_limit_in_bits_per_sec" expected to be of type "number"';
    {
      average_download_rate_limit_in_bits_per_sec: converted,
    }
  ),
  withAverageUploadRateLimitInBitsPerSec(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"average_upload_rate_limit_in_bits_per_sec" expected to be of type "number"';
    {
      average_upload_rate_limit_in_bits_per_sec: converted,
    }
  ),
  withCloudwatchLogGroupArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
    {
      cloudwatch_log_group_arn: converted,
    }
  ),
  withGatewayIpAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_ip_address" expected to be of type "string"';
    {
      gateway_ip_address: converted,
    }
  ),
  withGatewayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_name" expected to be of type "string"';
    {
      gateway_name: converted,
    }
  ),
  withGatewayTimezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_timezone" expected to be of type "string"';
    {
      gateway_timezone: converted,
    }
  ),
  withGatewayType(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_type" expected to be of type "string"';
    {
      gateway_type: converted,
    }
  ),
  withGatewayVpcEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_vpc_endpoint" expected to be of type "string"';
    {
      gateway_vpc_endpoint: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMediumChangerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"medium_changer_type" expected to be of type "string"';
    {
      medium_changer_type: converted,
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
  withSmbFileShareVisibility(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"smb_file_share_visibility" expected to be of type "bool"';
    {
      smb_file_share_visibility: converted,
    }
  ),
  withSmbGuestPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"smb_guest_password" expected to be of type "string"';
    {
      smb_guest_password: converted,
    }
  ),
  withSmbSecurityStrategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"smb_security_strategy" expected to be of type "string"';
    {
      smb_security_strategy: converted,
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
  withTapeDriveType(value):: (
    local converted = value;
    assert std.isString(converted) : '"tape_drive_type" expected to be of type "string"';
    {
      tape_drive_type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  maintenance_start_time:: {
    local block = self,
    new(hourOfDay):: (
      {}
      + block.withHourOfDay(hourOfDay)
    ),
    withDayOfMonth(value):: (
      local converted = value;
      assert std.isString(converted) : '"day_of_month" expected to be of type "string"';
      {
        day_of_month: converted,
      }
    ),
    withDayOfWeek(value):: (
      local converted = value;
      assert std.isString(converted) : '"day_of_week" expected to be of type "string"';
      {
        day_of_week: converted,
      }
    ),
    withHourOfDay(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"hour_of_day" expected to be of type "number"';
      {
        hour_of_day: converted,
      }
    ),
    withMinuteOfHour(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"minute_of_hour" expected to be of type "number"';
      {
        minute_of_hour: converted,
      }
    ),
  },
  smb_active_directory_settings:: {
    local block = self,
    new(domainName, password, username):: (
      {}
      + block.withDomainName(domainName)
      + block.withPassword(password)
      + block.withUsername(username)
    ),
    withDomainControllers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"domain_controllers" expected to be of type "set"';
      {
        domain_controllers: converted,
      }
    ),
    withDomainControllersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"domain_controllers" expected to be of type "set"';
      {
        domain_controllers+: converted,
      }
    ),
    withDomainName(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    withOrganizationalUnit(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizational_unit" expected to be of type "string"';
      {
        organizational_unit: converted,
      }
    ),
    withPassword(value):: (
      local converted = value;
      assert std.isString(converted) : '"password" expected to be of type "string"';
      {
        password: converted,
      }
    ),
    withTimeoutInSeconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
      {
        timeout_in_seconds: converted,
      }
    ),
    withUsername(value):: (
      local converted = value;
      assert std.isString(converted) : '"username" expected to be of type "string"';
      {
        username: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withMaintenanceStartTime(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_start_time: value,
    }
  ),
  withSmbActiveDirectorySettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      smb_active_directory_settings: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withMaintenanceStartTimeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_start_time+: converted,
    }
  ),
  withSmbActiveDirectorySettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      smb_active_directory_settings+: converted,
    }
  ),
}
