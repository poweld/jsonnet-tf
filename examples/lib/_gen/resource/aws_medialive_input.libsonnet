{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_medialive_input",
          type:: "resource",
          attributes:: ["arn", "attached_channels", "id", "input_class", "input_partner_ids", "input_security_groups", "input_source_type", "name", "region", "role_arn", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInputSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_security_groups" expected to be of type "list"';
    {
      input_security_groups: converted,
    }
  ),
  withInputSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"input_security_groups" expected to be of type "list"';
    {
      input_security_groups+: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  destinations:: {
    local block = self,
    new(streamName):: (
      {}
      + block.withStreamName(streamName)
    ),
    withStreamName(value):: (
      local converted = value;
      assert std.isString(converted) : '"stream_name" expected to be of type "string"';
      {
        stream_name: converted,
      }
    ),
  },
  input_devices:: {
    local block = self,
    new(id):: (
      {}
      + block.withId(id)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
  },
  media_connect_flows:: {
    local block = self,
    new(flowArn):: (
      {}
      + block.withFlowArn(flowArn)
    ),
    withFlowArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"flow_arn" expected to be of type "string"';
      {
        flow_arn: converted,
      }
    ),
  },
  sources:: {
    local block = self,
    new(passwordParam, url, username):: (
      {}
      + block.withPasswordParam(passwordParam)
      + block.withUrl(url)
      + block.withUsername(username)
    ),
    withPasswordParam(value):: (
      local converted = value;
      assert std.isString(converted) : '"password_param" expected to be of type "string"';
      {
        password_param: converted,
      }
    ),
    withUrl(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  vpc:: {
    local block = self,
    new(subnetIds):: (
      {}
      + block.withSubnetIds(subnetIds)
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
      {
        subnet_ids+: converted,
      }
    ),
  },
  withDestinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations: value,
    }
  ),
  withInputDevices(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_devices: value,
    }
  ),
  withMediaConnectFlows(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_connect_flows: value,
    }
  ),
  withSources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sources: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpc(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc: value,
    }
  ),
  withDestinationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destinations+: converted,
    }
  ),
  withInputDevicesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_devices+: converted,
    }
  ),
  withMediaConnectFlowsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_connect_flows+: converted,
    }
  ),
  withSourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sources+: converted,
    }
  ),
  withVpcMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc+: converted,
    }
  ),
}
