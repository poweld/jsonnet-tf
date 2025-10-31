{
  local block = self,
  new(terraformName, name, triggerType, triggerValue):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_chimesdkvoice_sip_rule",
          type:: "resource",
          attributes:: ["disabled", "id", "name", "region", "trigger_type", "trigger_value"],
        },
      },
    }
    + block.withName(name)
    + block.withTriggerType(triggerType)
    + block.withTriggerValue(triggerValue)
  ),
  withDisabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
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
  withTriggerType(value):: (
    local converted = value;
    assert std.isString(converted) : '"trigger_type" expected to be of type "string"';
    {
      trigger_type: converted,
    }
  ),
  withTriggerValue(value):: (
    local converted = value;
    assert std.isString(converted) : '"trigger_value" expected to be of type "string"';
    {
      trigger_value: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  target_applications:: {
    local block = self,
    new(awsRegion, priority, sipMediaApplicationId):: (
      {}
      + block.withAwsRegion(awsRegion)
      + block.withPriority(priority)
      + block.withSipMediaApplicationId(sipMediaApplicationId)
    ),
    withAwsRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"aws_region" expected to be of type "string"';
      {
        aws_region: converted,
      }
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    withSipMediaApplicationId(value):: (
      local converted = value;
      assert std.isString(converted) : '"sip_media_application_id" expected to be of type "string"';
      {
        sip_media_application_id: converted,
      }
    ),
  },
  withTargetApplications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_applications: value,
    }
  ),
  withTargetApplicationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_applications+: converted,
    }
  ),
}
