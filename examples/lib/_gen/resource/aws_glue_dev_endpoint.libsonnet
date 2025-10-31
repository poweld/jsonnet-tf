{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_dev_endpoint",
          type:: "resource",
          attributes:: ["arguments", "arn", "availability_zone", "extra_jars_s3_path", "extra_python_libs_s3_path", "failure_reason", "glue_version", "id", "name", "number_of_nodes", "number_of_workers", "private_address", "public_address", "public_key", "public_keys", "region", "role_arn", "security_configuration", "security_group_ids", "status", "subnet_id", "tags", "tags_all", "vpc_id", "worker_type", "yarn_endpoint_address", "zeppelin_remote_spark_interpreter_port"],
        },
      },
    }
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withArguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"arguments" expected to be of type "map"';
    {
      arguments: converted,
    }
  ),
  withExtraJarsS3Path(value):: (
    local converted = value;
    assert std.isString(converted) : '"extra_jars_s3_path" expected to be of type "string"';
    {
      extra_jars_s3_path: converted,
    }
  ),
  withExtraPythonLibsS3Path(value):: (
    local converted = value;
    assert std.isString(converted) : '"extra_python_libs_s3_path" expected to be of type "string"';
    {
      extra_python_libs_s3_path: converted,
    }
  ),
  withGlueVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"glue_version" expected to be of type "string"';
    {
      glue_version: converted,
    }
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
  withNumberOfNodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_nodes" expected to be of type "number"';
    {
      number_of_nodes: converted,
    }
  ),
  withNumberOfWorkers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_workers" expected to be of type "number"';
    {
      number_of_workers: converted,
    }
  ),
  withPublicKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
    }
  ),
  withPublicKeys(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_keys" expected to be of type "set"';
    {
      public_keys: converted,
    }
  ),
  withPublicKeysMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"public_keys" expected to be of type "set"';
    {
      public_keys+: converted,
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
  withSecurityConfiguration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
    }
  ),
  withSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  withSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
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
  withWorkerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"worker_type" expected to be of type "string"';
    {
      worker_type: converted,
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
