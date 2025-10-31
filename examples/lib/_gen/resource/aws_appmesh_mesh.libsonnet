{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appmesh_mesh",
          type:: "resource",
          attributes:: ["arn", "created_date", "id", "last_updated_date", "mesh_owner", "name", "region", "resource_owner", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  spec:: {
    local block = self,
    new():: (
      {}
    ),
    egress_filter:: {
      local block = self,
      new():: (
        {}
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    service_discovery:: {
      local block = self,
      new():: (
        {}
      ),
      withIpPreference(value):: (
        local converted = value;
        assert std.isString(converted) : '"ip_preference" expected to be of type "string"';
        {
          ip_preference: converted,
        }
      ),
    },
    withEgressFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        egress_filter: value,
      }
    ),
    withServiceDiscovery(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_discovery: value,
      }
    ),
    withEgressFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        egress_filter+: converted,
      }
    ),
    withServiceDiscoveryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_discovery+: converted,
      }
    ),
  },
  withSpec(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec: value,
    }
  ),
  withSpecMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec+: converted,
    }
  ),
}
