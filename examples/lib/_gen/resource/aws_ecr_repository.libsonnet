{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_repository",
          type:: "resource",
          attributes:: ["arn", "force_delete", "id", "image_tag_mutability", "name", "region", "registry_id", "repository_url", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withForceDelete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageTagMutability(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_tag_mutability" expected to be of type "string"';
    {
      image_tag_mutability: converted,
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
  encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withEncryptionType(value):: (
      local converted = value;
      assert std.isString(converted) : '"encryption_type" expected to be of type "string"';
      {
        encryption_type: converted,
      }
    ),
    withKmsKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key" expected to be of type "string"';
      {
        kms_key: converted,
      }
    ),
  },
  image_scanning_configuration:: {
    local block = self,
    new(scanOnPush):: (
      {}
      + block.withScanOnPush(scanOnPush)
    ),
    withScanOnPush(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"scan_on_push" expected to be of type "bool"';
      {
        scan_on_push: converted,
      }
    ),
  },
  image_tag_mutability_exclusion_filter:: {
    local block = self,
    new(filter, filterType):: (
      {}
      + block.withFilter(filter)
      + block.withFilterType(filterType)
    ),
    withFilter(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter" expected to be of type "string"';
      {
        filter: converted,
      }
    ),
    withFilterType(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
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
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withImageScanningConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration: value,
    }
  ),
  withImageTagMutabilityExclusionFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tag_mutability_exclusion_filter: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  withImageScanningConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_scanning_configuration+: converted,
    }
  ),
  withImageTagMutabilityExclusionFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tag_mutability_exclusion_filter+: converted,
    }
  ),
}
