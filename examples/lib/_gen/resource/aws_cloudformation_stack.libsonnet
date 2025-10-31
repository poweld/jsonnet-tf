{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudformation_stack",
          type:: "resource",
          attributes:: ["capabilities", "disable_rollback", "iam_role_arn", "id", "name", "notification_arns", "on_failure", "outputs", "parameters", "policy_body", "policy_url", "region", "tags", "tags_all", "template_body", "template_url", "timeout_in_minutes"],
        },
      },
    }
    + block.withName(name)
  ),
  withCapabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capabilities" expected to be of type "set"';
    {
      capabilities: converted,
    }
  ),
  withCapabilitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capabilities" expected to be of type "set"';
    {
      capabilities+: converted,
    }
  ),
  withDisableRollback(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_rollback" expected to be of type "bool"';
    {
      disable_rollback: converted,
    }
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
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
  withNotificationArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notification_arns" expected to be of type "set"';
    {
      notification_arns: converted,
    }
  ),
  withNotificationArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notification_arns" expected to be of type "set"';
    {
      notification_arns+: converted,
    }
  ),
  withOnFailure(value):: (
    local converted = value;
    assert std.isString(converted) : '"on_failure" expected to be of type "string"';
    {
      on_failure: converted,
    }
  ),
  withParameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  withPolicyBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_body" expected to be of type "string"';
    {
      policy_body: converted,
    }
  ),
  withPolicyUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_url" expected to be of type "string"';
    {
      policy_url: converted,
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
  withTemplateBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_body" expected to be of type "string"';
    {
      template_body: converted,
    }
  ),
  withTemplateUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_url" expected to be of type "string"';
    {
      template_url: converted,
    }
  ),
  withTimeoutInMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout_in_minutes" expected to be of type "number"';
    {
      timeout_in_minutes: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
