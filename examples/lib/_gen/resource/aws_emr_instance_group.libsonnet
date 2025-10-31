{
  local block = self,
  new(terraformName, clusterId, instanceType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_instance_group",
          type:: "resource",
          attributes:: ["autoscaling_policy", "bid_price", "cluster_id", "configurations_json", "ebs_optimized", "id", "instance_count", "instance_type", "name", "region", "running_instance_count", "status"],
        },
      },
    }
    + block.withClusterId(clusterId)
    + block.withInstanceType(instanceType)
  ),
  withAutoscalingPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_policy" expected to be of type "string"';
    {
      autoscaling_policy: converted,
    }
  ),
  withBidPrice(value):: (
    local converted = value;
    assert std.isString(converted) : '"bid_price" expected to be of type "string"';
    {
      bid_price: converted,
    }
  ),
  withClusterId(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
    {
      cluster_id: converted,
    }
  ),
  withConfigurationsJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"configurations_json" expected to be of type "string"';
    {
      configurations_json: converted,
    }
  ),
  withEbsOptimized(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
    {
      ebs_optimized: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ebs_config:: {
    local block = self,
    new(size, type):: (
      {}
      + block.withSize(size)
      + block.withType(type)
    ),
    withIops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    withSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withVolumesPerInstance(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"volumes_per_instance" expected to be of type "number"';
      {
        volumes_per_instance: converted,
      }
    ),
  },
  withEbsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_config: value,
    }
  ),
  withEbsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ebs_config+: converted,
    }
  ),
}
