{
  local block = self,
  new(terraformName, application, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elastic_beanstalk_environment",
          type:: "resource",
          attributes:: ["all_settings", "application", "arn", "autoscaling_groups", "cname", "cname_prefix", "description", "endpoint_url", "id", "instances", "launch_configurations", "load_balancers", "name", "platform_arn", "poll_interval", "queues", "region", "solution_stack_name", "tags", "tags_all", "template_name", "tier", "triggers", "version_label", "wait_for_ready_timeout"],
        },
      },
    }
    + block.withApplication(application)
    + block.withName(name)
  ),
  withApplication(value):: (
    local converted = value;
    assert std.isString(converted) : '"application" expected to be of type "string"';
    {
      application: converted,
    }
  ),
  withCnamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"cname_prefix" expected to be of type "string"';
    {
      cname_prefix: converted,
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
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPlatformArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_arn" expected to be of type "string"';
    {
      platform_arn: converted,
    }
  ),
  withPollInterval(value):: (
    local converted = value;
    assert std.isString(converted) : '"poll_interval" expected to be of type "string"';
    {
      poll_interval: converted,
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
  withSolutionStackName(value):: (
    local converted = value;
    assert std.isString(converted) : '"solution_stack_name" expected to be of type "string"';
    {
      solution_stack_name: converted,
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
  withTemplateName(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_name" expected to be of type "string"';
    {
      template_name: converted,
    }
  ),
  withTier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  withVersionLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_label" expected to be of type "string"';
    {
      version_label: converted,
    }
  ),
  withWaitForReadyTimeout(value):: (
    local converted = value;
    assert std.isString(converted) : '"wait_for_ready_timeout" expected to be of type "string"';
    {
      wait_for_ready_timeout: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  setting:: {
    local block = self,
    new(name, namespace, value):: (
      {}
      + block.withName(name)
      + block.withNamespace(namespace)
      + block.withValue(value)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withNamespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    withResource(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource" expected to be of type "string"';
      {
        resource: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting: value,
    }
  ),
  withSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      setting+: converted,
    }
  ),
}
