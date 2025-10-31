{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emrcontainers_virtual_cluster",
          type:: "resource",
          attributes:: ["arn", "id", "name", "region", "tags", "tags_all"],
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
  container_provider:: {
    local block = self,
    new(id, type):: (
      {}
      + block.withId(id)
      + block.withType(type)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    info:: {
      local block = self,
      new():: (
        {}
      ),
      eks_info:: {
        local block = self,
        new():: (
          {}
        ),
        withNamespace(value):: (
          local converted = value;
          assert std.isString(converted) : '"namespace" expected to be of type "string"';
          {
            namespace: converted,
          }
        ),
      },
      withEksInfo(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          eks_info: value,
        }
      ),
      withEksInfoMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          eks_info+: converted,
        }
      ),
    },
    withInfo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        info: value,
      }
    ),
    withInfoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        info+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withContainerProvider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container_provider: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withContainerProviderMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container_provider+: converted,
    }
  ),
}
