{
  local block = self,
  new(terraformName, application, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elastic_beanstalk_configuration_template",
          type:: "resource",
          attributes:: ["application", "description", "environment_id", "id", "name", "region", "solution_stack_name"],
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
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnvironmentId(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
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
  withSolutionStackName(value):: (
    local converted = value;
    assert std.isString(converted) : '"solution_stack_name" expected to be of type "string"';
    {
      solution_stack_name: converted,
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
