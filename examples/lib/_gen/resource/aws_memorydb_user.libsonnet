{
  local block = self,
  new(terraformName, accessString, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_memorydb_user",
          type:: "resource",
          attributes:: ["access_string", "arn", "id", "minimum_engine_version", "region", "tags", "tags_all", "user_name"],
        },
      },
    }
    + block.withAccessString(accessString)
    + block.withUserName(userName)
  ),
  withAccessString(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_string" expected to be of type "string"';
    {
      access_string: converted,
    }
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
    new(type):: (
      {}
      + block.withType(type)
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
