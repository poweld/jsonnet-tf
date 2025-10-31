{
  local block = self,
  new(terraformName, sourceFileSystemId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_efs_replication_configuration",
          type:: "resource",
          attributes:: ["creation_time", "id", "original_source_file_system_arn", "region", "source_file_system_arn", "source_file_system_id", "source_file_system_region"],
        },
      },
    }
    + block.withSourceFileSystemId(sourceFileSystemId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withSourceFileSystemId(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_file_system_id" expected to be of type "string"';
    {
      source_file_system_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  destination:: {
    local block = self,
    new():: (
      {}
    ),
    withAvailabilityZoneName(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone_name" expected to be of type "string"';
      {
        availability_zone_name: converted,
      }
    ),
    withFileSystemId(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
      {
        file_system_id: converted,
      }
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
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
  },
  withDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination+: converted,
    }
  ),
}
