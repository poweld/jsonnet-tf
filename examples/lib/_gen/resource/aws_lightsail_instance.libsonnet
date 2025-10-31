{
  local block = self,
  new(terraformName, availabilityZone, blueprintId, bundleId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_instance",
          type:: "resource",
          attributes:: ["arn", "availability_zone", "blueprint_id", "bundle_id", "cpu_count", "created_at", "id", "ip_address_type", "ipv6_addresses", "is_static_ip", "key_pair_name", "name", "private_ip_address", "public_ip_address", "ram_size", "region", "tags", "tags_all", "user_data", "username"],
        },
      },
    }
    + block.withAvailabilityZone(availabilityZone)
    + block.withBlueprintId(blueprintId)
    + block.withBundleId(bundleId)
    + block.withName(name)
  ),
  withAvailabilityZone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  withBlueprintId(value):: (
    local converted = value;
    assert std.isString(converted) : '"blueprint_id" expected to be of type "string"';
    {
      blueprint_id: converted,
    }
  ),
  withBundleId(value):: (
    local converted = value;
    assert std.isString(converted) : '"bundle_id" expected to be of type "string"';
    {
      bundle_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIpAddressType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  withKeyPairName(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_pair_name" expected to be of type "string"';
    {
      key_pair_name: converted,
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
  withUserData(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_data" expected to be of type "string"';
    {
      user_data: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  add_on:: {
    local block = self,
    new(snapshotTime, status, type):: (
      {}
      + block.withSnapshotTime(snapshotTime)
      + block.withStatus(status)
      + block.withType(type)
    ),
    withSnapshotTime(value):: (
      local converted = value;
      assert std.isString(converted) : '"snapshot_time" expected to be of type "string"';
      {
        snapshot_time: converted,
      }
    ),
    withStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withAddOn(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_on: value,
    }
  ),
  withAddOnMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      add_on+: converted,
    }
  ),
}
