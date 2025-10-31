{
  local block = self,
  new(terraformName, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_batch_compute_environment",
          type:: "resource",
          attributes:: ["arn", "ecs_cluster_arn", "id", "name", "name_prefix", "region", "service_role", "state", "status", "status_reason", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withType(type)
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
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
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
  withServiceRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  withState(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  compute_resources:: {
    local block = self,
    new(maxVcpus, subnets, type):: (
      {}
      + block.withMaxVcpus(maxVcpus)
      + block.withSubnets(subnets)
      + block.withType(type)
    ),
    withAllocationStrategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
      {
        allocation_strategy: converted,
      }
    ),
    withBidPercentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"bid_percentage" expected to be of type "number"';
      {
        bid_percentage: converted,
      }
    ),
    withDesiredVcpus(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_vcpus" expected to be of type "number"';
      {
        desired_vcpus: converted,
      }
    ),
    withEc2KeyPair(value):: (
      local converted = value;
      assert std.isString(converted) : '"ec2_key_pair" expected to be of type "string"';
      {
        ec2_key_pair: converted,
      }
    ),
    withImageId(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_id" expected to be of type "string"';
      {
        image_id: converted,
      }
    ),
    withInstanceRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_role" expected to be of type "string"';
      {
        instance_role: converted,
      }
    ),
    withInstanceType(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_type" expected to be of type "set"';
      {
        instance_type: converted,
      }
    ),
    withInstanceTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_type" expected to be of type "set"';
      {
        instance_type+: converted,
      }
    ),
    withMaxVcpus(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_vcpus" expected to be of type "number"';
      {
        max_vcpus: converted,
      }
    ),
    withMinVcpus(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_vcpus" expected to be of type "number"';
      {
        min_vcpus: converted,
      }
    ),
    withPlacementGroup(value):: (
      local converted = value;
      assert std.isString(converted) : '"placement_group" expected to be of type "string"';
      {
        placement_group: converted,
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
    withSpotIamFleetRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"spot_iam_fleet_role" expected to be of type "string"';
      {
        spot_iam_fleet_role: converted,
      }
    ),
    withSubnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    withSubnetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    ec2_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withImageIdOverride(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_id_override" expected to be of type "string"';
        {
          image_id_override: converted,
        }
      ),
      withImageKubernetesVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_kubernetes_version" expected to be of type "string"';
        {
          image_kubernetes_version: converted,
        }
      ),
      withImageType(value):: (
        local converted = value;
        assert std.isString(converted) : '"image_type" expected to be of type "string"';
        {
          image_type: converted,
        }
      ),
    },
    launch_template:: {
      local block = self,
      new():: (
        {}
      ),
      withLaunchTemplateId(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
        {
          launch_template_id: converted,
        }
      ),
      withLaunchTemplateName(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
        {
          launch_template_name: converted,
        }
      ),
      withVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"version" expected to be of type "string"';
        {
          version: converted,
        }
      ),
    },
    withEc2Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_configuration: value,
      }
    ),
    withLaunchTemplate(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template: value,
      }
    ),
    withEc2ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_configuration+: converted,
      }
    ),
    withLaunchTemplateMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template+: converted,
      }
    ),
  },
  eks_configuration:: {
    local block = self,
    new(eksClusterArn, kubernetesNamespace):: (
      {}
      + block.withEksClusterArn(eksClusterArn)
      + block.withKubernetesNamespace(kubernetesNamespace)
    ),
    withEksClusterArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"eks_cluster_arn" expected to be of type "string"';
      {
        eks_cluster_arn: converted,
      }
    ),
    withKubernetesNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"kubernetes_namespace" expected to be of type "string"';
      {
        kubernetes_namespace: converted,
      }
    ),
  },
  update_policy:: {
    local block = self,
    new():: (
      {}
    ),
    withJobExecutionTimeoutMinutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"job_execution_timeout_minutes" expected to be of type "number"';
      {
        job_execution_timeout_minutes: converted,
      }
    ),
    withTerminateJobsOnUpdate(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"terminate_jobs_on_update" expected to be of type "bool"';
      {
        terminate_jobs_on_update: converted,
      }
    ),
  },
  withComputeResources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_resources: value,
    }
  ),
  withEksConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_configuration: value,
    }
  ),
  withUpdatePolicy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_policy: value,
    }
  ),
  withComputeResourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_resources+: converted,
    }
  ),
  withEksConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_configuration+: converted,
    }
  ),
  withUpdatePolicyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      update_policy+: converted,
    }
  ),
}
