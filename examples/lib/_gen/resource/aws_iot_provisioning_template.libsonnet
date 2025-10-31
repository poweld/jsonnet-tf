{
  local block = self,
  new(terraformName, name, provisioningRoleArn, templateBody):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iot_provisioning_template",
          type:: "resource",
          attributes:: ["arn", "default_version_id", "description", "enabled", "id", "name", "provisioning_role_arn", "region", "tags", "tags_all", "template_body", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withProvisioningRoleArn(provisioningRoleArn)
    + block.withTemplateBody(templateBody)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  withProvisioningRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_role_arn" expected to be of type "string"';
    {
      provisioning_role_arn: converted,
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
  pre_provisioning_hook:: {
    local block = self,
    new(targetArn):: (
      {}
      + block.withTargetArn(targetArn)
    ),
    withPayloadVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"payload_version" expected to be of type "string"';
      {
        payload_version: converted,
      }
    ),
    withTargetArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_arn" expected to be of type "string"';
      {
        target_arn: converted,
      }
    ),
  },
  withPreProvisioningHook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pre_provisioning_hook: value,
    }
  ),
  withPreProvisioningHookMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pre_provisioning_hook+: converted,
    }
  ),
}
