{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_evidently_project",
          type:: "resource",
          attributes:: ["active_experiment_count", "active_launch_count", "arn", "created_time", "description", "experiment_count", "feature_count", "id", "last_updated_time", "launch_count", "name", "region", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
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
  data_delivery:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withLogGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group" expected to be of type "string"';
        {
          log_group: converted,
        }
      ),
    },
    s3_destination:: {
      local block = self,
      new():: (
        {}
      ),
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      withPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
    },
    withCloudwatchLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    withS3Destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination: value,
      }
    ),
    withCloudwatchLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    withS3DestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination+: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDataDelivery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_delivery: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDataDeliveryMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_delivery+: converted,
    }
  ),
}
