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
    local converted = value;
    assert std.isBoolean(converted) : '"catch_all" expected to be of type "bool"';
    {
      catch_all: converted,
    }
  ),
  "#withDescription":: "Description of the policy.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  "#withName":: "Name of the policy.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPriority":: "Priority of the policy",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
