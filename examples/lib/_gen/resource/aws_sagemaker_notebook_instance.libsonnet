{
  local block = self,
  new(terraformName, instanceType, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_notebook_instance",
          type:: "resource",
          attributes:: ["additional_code_repositories", "arn", "default_code_repository", "direct_internet_access", "id", "instance_type", "kms_key_id", "lifecycle_config_name", "name", "network_interface_id", "platform_identifier", "region", "role_arn", "root_access", "security_groups", "subnet_id", "tags", "tags_all", "url", "volume_size"],
        },
      },
    }
    + block.withInstanceType(instanceType)
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withAdditionalCodeRepositories(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_code_repositories" expected to be of type "set"';
    {
      additional_code_repositories: converted,
    }
  ),
  withAdditionalCodeRepositoriesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"additional_code_repositories" expected to be of type "set"';
    {
      additional_code_repositories+: converted,
    }
  ),
  withDefaultCodeRepository(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_code_repository" expected to be of type "string"';
    {
      default_code_repository: converted,
    }
  ),
  withDirectInternetAccess(value):: (
    local converted = value;
    assert std.isString(converted) : '"direct_internet_access" expected to be of type "string"';
    {
      direct_internet_access: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  withLifecycleConfigName(value):: (
    local converted = value;
    assert std.isString(converted) : '"lifecycle_config_name" expected to be of type "string"';
    {
      lifecycle_config_name: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPlatformIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_identifier" expected to be of type "string"';
    {
      platform_identifier: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withRootAccess(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_access" expected to be of type "string"';
    {
      root_access: converted,
    }
  ),
  withSecurityGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  withSecurityGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  withSubnetId(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  withVolumeSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
    {
      volume_size: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  instance_metadata_service_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withMinimumInstanceMetadataServiceVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"minimum_instance_metadata_service_version" expected to be of type "string"';
      {
        minimum_instance_metadata_service_version: converted,
      }
    ),
  },
  withInstanceMetadataServiceConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_service_configuration: value,
    }
  ),
  withInstanceMetadataServiceConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_metadata_service_configuration+: converted,
    }
  ),
}
