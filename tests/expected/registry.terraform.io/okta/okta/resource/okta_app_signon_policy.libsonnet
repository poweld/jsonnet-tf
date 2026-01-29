{
  local block = self,

  new(terraformName, description, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_app_signon_policy",
          type:: "resource",
          attributes:: ["catch_all", "default_rule_id", "description", "id", "name", "priority"],
        },
      },
    }
    + block.withDescription(description)
    + block.withName(name)
  ),

  "#withCatchAll":: "If false, the default rule of the policy is set access to `DENY`. Otherwise default behavior of the default rule is to leave access at `ALLOW`.  **WARNING** setting this attribute to false changes policy rule's default behavior. Use at your own risk. This is only applied during creation and does not affect import or update.",
  withCatchAll(value):: (
    assert std.isBoolean(value) : '"catch_all" expected to be of type "bool"';

    {
      catch_all: value,
    }
  ),

  "#withDescription":: "Description of the policy.",
  withDescription(value):: (
    assert std.isString(value) : '"description" expected to be of type "string"';

    {
      description: value,
    }
  ),

  "#withName":: "Name of the policy.",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withPriority":: "Priority of the policy",
  withPriority(value):: (
    assert std.isNumber(value) : '"priority" expected to be of type "number"';

    {
      priority: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
