{
  local block = self,
  new(terraformName, globalNetworkId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_device",
          type:: "resource",
          attributes:: ["arn", "description", "global_network_id", "id", "model", "serial_number", "site_id", "tags", "tags_all", "type", "vendor"],
        },
      },
    }
    + block.withGlobalNetworkId(globalNetworkId)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withGlobalNetworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_network_id" expected to be of type "string"';
    {
      global_network_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withModel(value):: (
    local converted = value;
    assert std.isString(converted) : '"model" expected to be of type "string"';
    {
      model: converted,
    }
  ),
  withSerialNumber(value):: (
    local converted = value;
    assert std.isString(converted) : '"serial_number" expected to be of type "string"';
    {
      serial_number: converted,
    }
  ),
  withSiteId(value):: (
    local converted = value;
    assert std.isString(converted) : '"site_id" expected to be of type "string"';
    {
      site_id: converted,
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
  withVendor(value):: (
    local converted = value;
    assert std.isString(converted) : '"vendor" expected to be of type "string"';
    {
      vendor: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  aws_location:: {
    local block = self,
    new():: (
      {}
    ),
    withSubnetArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_arn" expected to be of type "string"';
      {
        subnet_arn: converted,
      }
    ),
    withZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"zone" expected to be of type "string"';
      {
        zone: converted,
      }
    ),
  },
  location:: {
    local block = self,
    new():: (
      {}
    ),
    withAddress(value):: (
      local converted = value;
      assert std.isString(converted) : '"address" expected to be of type "string"';
      {
        address: converted,
      }
    ),
    withLatitude(value):: (
      local converted = value;
      assert std.isString(converted) : '"latitude" expected to be of type "string"';
      {
        latitude: converted,
      }
    ),
    withLongitude(value):: (
      local converted = value;
      assert std.isString(converted) : '"longitude" expected to be of type "string"';
      {
        longitude: converted,
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
  withAwsLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      aws_location: value,
    }
  ),
  withLocation(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAwsLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      aws_location+: converted,
    }
  ),
  withLocationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      location+: converted,
    }
  ),
}
