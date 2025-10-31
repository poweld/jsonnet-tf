{
  local block = self,
  new(terraformName, repositoryName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codecommit_trigger",
          type:: "resource",
          attributes:: ["configuration_id", "id", "region", "repository_name"],
        },
      },
    }
    + block.withRepositoryName(repositoryName)
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
  withRepositoryName(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository_name" expected to be of type "string"';
    {
      repository_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  trigger:: {
    local block = self,
    new(destinationArn, events, name):: (
      {}
      + block.withDestinationArn(destinationArn)
      + block.withEvents(events)
      + block.withName(name)
    ),
    withBranches(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"branches" expected to be of type "list"';
      {
        branches: converted,
      }
    ),
    withBranchesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"branches" expected to be of type "list"';
      {
        branches+: converted,
      }
    ),
    withCustomData(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_data" expected to be of type "string"';
      {
        custom_data: converted,
      }
    ),
    withDestinationArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    withEvents(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"events" expected to be of type "list"';
      {
        events: converted,
      }
    ),
    withEventsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"events" expected to be of type "list"';
      {
        events+: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  withTrigger(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger: value,
    }
  ),
  withTriggerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger+: converted,
    }
  ),
}
