{
  local block = self,
  new(terraformName, meshName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appmesh_virtual_service",
          type:: "resource",
          attributes:: ["arn", "created_date", "id", "last_updated_date", "mesh_name", "mesh_owner", "name", "region", "resource_owner", "tags", "tags_all"],
        },
      },
    }
    + block.withMeshName(meshName)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMeshName(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_name" expected to be of type "string"';
    {
      mesh_name: converted,
    }
  ),
  withMeshOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_owner" expected to be of type "string"';
    {
      mesh_owner: converted,
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
    provider:: {
      local block = self,
      new():: (
        {}
      ),
      virtual_node:: {
        local block = self,
        new(virtualNodeName):: (
          {}
          + block.withVirtualNodeName(virtualNodeName)
        ),
        withVirtualNodeName(value):: (
          local converted = value;
          assert std.isString(converted) : '"virtual_node_name" expected to be of type "string"';
          {
            virtual_node_name: converted,
          }
        ),
      },
      virtual_router:: {
        local block = self,
        new(virtualRouterName):: (
          {}
          + block.withVirtualRouterName(virtualRouterName)
        ),
        withVirtualRouterName(value):: (
          local converted = value;
          assert std.isString(converted) : '"virtual_router_name" expected to be of type "string"';
          {
            virtual_router_name: converted,
          }
        ),
      },
      withVirtualNode(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_node: value,
        }
      ),
      withVirtualRouter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_router: value,
        }
      ),
      withVirtualNodeMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_node+: converted,
        }
      ),
      withVirtualRouterMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          virtual_router+: converted,
        }
      ),
    },
    withProvider(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider: value,
      }
    ),
    withProviderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        provider+: converted,
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
