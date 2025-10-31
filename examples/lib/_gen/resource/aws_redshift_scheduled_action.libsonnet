{
  local block = self,
  new(terraformName, iamRole, name, schedule):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshift_scheduled_action",
          type:: "resource",
          attributes:: ["description", "enable", "end_time", "iam_role", "id", "name", "region", "schedule", "start_time"],
        },
      },
    }
    + block.withIamRole(iamRole)
    + block.withName(name)
    + block.withSchedule(schedule)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
    {
      enable: converted,
    }
  ),
  withEndTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_time" expected to be of type "string"';
    {
      end_time: converted,
    }
  ),
  withIamRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role" expected to be of type "string"';
    {
      iam_role: converted,
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withSchedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  withStartTime(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_time" expected to be of type "string"';
    {
      start_time: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  target_action:: {
    local block = self,
    new():: (
      {}
    ),
    pause_cluster:: {
      local block = self,
      new(clusterIdentifier):: (
        {}
        + block.withClusterIdentifier(clusterIdentifier)
      ),
      withClusterIdentifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
        {
          cluster_identifier: converted,
        }
      ),
    },
    resize_cluster:: {
      local block = self,
      new(clusterIdentifier):: (
        {}
        + block.withClusterIdentifier(clusterIdentifier)
      ),
      withClassic(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"classic" expected to be of type "bool"';
        {
          classic: converted,
        }
      ),
      withClusterIdentifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
        {
          cluster_identifier: converted,
        }
      ),
      withClusterType(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_type" expected to be of type "string"';
        {
          cluster_type: converted,
        }
      ),
      withNodeType(value):: (
        local converted = value;
        assert std.isString(converted) : '"node_type" expected to be of type "string"';
        {
          node_type: converted,
        }
      ),
      withNumberOfNodes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"number_of_nodes" expected to be of type "number"';
        {
          number_of_nodes: converted,
        }
      ),
    },
    resume_cluster:: {
      local block = self,
      new(clusterIdentifier):: (
        {}
        + block.withClusterIdentifier(clusterIdentifier)
      ),
      withClusterIdentifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
        {
          cluster_identifier: converted,
        }
      ),
    },
    withPauseCluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pause_cluster: value,
      }
    ),
    withResizeCluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resize_cluster: value,
      }
    ),
    withResumeCluster(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resume_cluster: value,
      }
    ),
    withPauseClusterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pause_cluster+: converted,
      }
    ),
    withResizeClusterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resize_cluster+: converted,
      }
    ),
    withResumeClusterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resume_cluster+: converted,
      }
    ),
  },
  withTargetAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_action: value,
    }
  ),
  withTargetActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_action+: converted,
    }
  ),
}
