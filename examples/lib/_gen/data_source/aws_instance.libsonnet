{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_instance",
          type:: "data",
          attributes:: ["ami", "arn", "associate_public_ip_address", "availability_zone", "credit_specification", "disable_api_stop", "disable_api_termination", "ebs_block_device", "ebs_optimized", "enclave_options", "ephemeral_block_device", "get_password_data", "get_user_data", "host_id", "host_resource_group_arn", "iam_instance_profile", "id", "instance_id", "instance_state", "instance_tags", "instance_type", "ipv6_addresses", "key_name", "launch_time", "maintenance_options", "metadata_options", "monitoring", "network_interface_id", "outpost_arn", "password_data", "placement_group", "placement_group_id", "placement_partition_number", "private_dns", "private_dns_name_options", "private_ip", "public_dns", "public_ip", "region", "root_block_device", "secondary_private_ips", "security_groups", "source_dest_check", "subnet_id", "tags", "tenancy", "user_data", "user_data_base64", "vpc_security_group_ids"],
        },
      },
    }
  ),
  withGetPasswordData(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"get_password_data" expected to be of type "bool"';
    {
      get_password_data: converted,
    }
  ),
  withGetUserData(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"get_user_data" expected to be of type "bool"';
    {
      get_user_data: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  withInstanceTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"instance_tags" expected to be of type "map"';
    {
      instance_tags: converted,
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
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.withName(name)
      + block.withValues(values)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withRead(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  withFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
