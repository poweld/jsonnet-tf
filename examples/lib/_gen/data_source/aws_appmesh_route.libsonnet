{
  local block = self,
  new(terraformName, meshName, name, virtualRouterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appmesh_route",
          type:: "data",
          attributes:: ["arn", "created_date", "id", "last_updated_date", "mesh_name", "mesh_owner", "name", "region", "resource_owner", "spec", "tags", "virtual_router_name"],
        },
      },
    }
    + block.withMeshName(meshName)
    + block.withName(name)
    + block.withVirtualRouterName(virtualRouterName)
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
  withVirtualRouterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_router_name" expected to be of type "string"';
    {
      virtual_router_name: converted,
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
