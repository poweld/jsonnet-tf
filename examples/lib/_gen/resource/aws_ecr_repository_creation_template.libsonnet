{
  local block = self,
  new(terraformName, appliedFor, prefix):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecr_repository_creation_template",
          type:: "resource",
          attributes:: ["applied_for", "custom_role_arn", "description", "id", "image_tag_mutability", "lifecycle_policy", "prefix", "region", "registry_id", "repository_policy", "resource_tags"],
        },
      },
    }
    + block.withAppliedFor(appliedFor)
    + block.withPrefix(prefix)
  ),
  withAppliedFor(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applied_for" expected to be of type "set"';
    {
      applied_for: converted,
    }
  ),
  withAppliedForMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"applied_for" expected to be of type "set"';
    {
      applied_for+: converted,
    }
  ),
  withCustomRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_role_arn" expected to be of type "string"';
    {
      custom_role_arn: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withLifecyclePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"lifecycle_policy" expected to be of type "string"';
    {
      lifecycle_policy: converted,
    }
  ),
  withPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix" expected to be of type "string"';
    {
      prefix: converted,
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
  withRepositoryPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_policy" expected to be of type "string"';
    {
      repository_policy: converted,
    }
  ),
  withResourceTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_tags" expected to be of type "map"';
    {
      resource_tags: converted,
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
  withEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  withImageTagMutabilityExclusionFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tag_mutability_exclusion_filter: value,
    }
  ),
  withEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  withImageTagMutabilityExclusionFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_tag_mutability_exclusion_filter+: converted,
    }
  ),
}
