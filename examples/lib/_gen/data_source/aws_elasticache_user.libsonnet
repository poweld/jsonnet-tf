{
  local block = self,
  new(terraformName, userId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elasticache_user",
          type:: "data",
          attributes:: ["access_string", "engine", "id", "no_password_required", "passwords", "region", "user_id", "user_name"],
        },
      },
    }
    + block.withUserId(userId)
  ),
  withAccessString(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_string" expected to be of type "string"';
    {
      access_string: converted,
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withNoPasswordRequired(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"no_password_required" expected to be of type "bool"';
    {
      no_password_required: converted,
    }
  ),
  withPasswords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"passwords" expected to be of type "set"';
    {
      passwords: converted,
    }
  ),
  withPasswordsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"passwords" expected to be of type "set"';
    {
      passwords+: converted,
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
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  authentication_mode:: {
    local block = self,
    new():: (
      {}
    ),
    withPasswordCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"password_count" expected to be of type "number"';
      {
        password_count: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  withAuthenticationMode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_mode: value,
    }
  ),
  withAuthenticationModeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      authentication_mode+: converted,
    }
  ),
}
