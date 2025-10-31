{
  local block = self,
  new(terraformName, directoryId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_directory_service_shared_directory",
          type:: "resource",
          attributes:: ["directory_id", "id", "method", "notes", "region", "shared_directory_id"],
        },
      },
    }
    + block.withDirectoryId(directoryId)
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"method" expected to be of type "string"';
    {
      method: converted,
    }
  ),
  withNotes(value):: (
    local converted = value;
    assert std.isString(converted) : '"notes" expected to be of type "string"';
    {
      notes: converted,
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
  target:: {
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
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  withTarget(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withTargetMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}
