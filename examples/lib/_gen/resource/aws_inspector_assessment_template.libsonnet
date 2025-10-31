{
  local block = self,
  new(terraformName, duration, name, rulesPackageArns, targetArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_inspector_assessment_template",
          type:: "resource",
          attributes:: ["arn", "duration", "id", "name", "region", "rules_package_arns", "tags", "tags_all", "target_arn"],
        },
      },
    }
    + block.withDuration(duration)
    + block.withName(name)
    + block.withRulesPackageArns(rulesPackageArns)
    + block.withTargetArn(targetArn)
  ),
  withDuration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration" expected to be of type "number"';
    {
      duration: converted,
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
  withRulesPackageArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rules_package_arns" expected to be of type "set"';
    {
      rules_package_arns: converted,
    }
  ),
  withRulesPackageArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rules_package_arns" expected to be of type "set"';
    {
      rules_package_arns+: converted,
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
  withTargetArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_arn" expected to be of type "string"';
    {
      target_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  event_subscription:: {
    local block = self,
    new(event, topicArn):: (
      {}
      + block.withEvent(event)
      + block.withTopicArn(topicArn)
    ),
    withEvent(value):: (
      local converted = value;
      assert std.isString(converted) : '"event" expected to be of type "string"';
      {
        event: converted,
      }
    ),
    withTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  withEventSubscription(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_subscription: value,
    }
  ),
  withEventSubscriptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_subscription+: converted,
    }
  ),
}
