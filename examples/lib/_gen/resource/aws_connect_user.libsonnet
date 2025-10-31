{
  local block = self,
  new(terraformName, instanceId, name, routingProfileId, securityProfileIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_connect_user",
          type:: "resource",
          attributes:: ["arn", "directory_user_id", "hierarchy_group_id", "id", "instance_id", "name", "password", "region", "routing_profile_id", "security_profile_ids", "tags", "tags_all", "user_id"],
        },
      },
    }
    + block.withInstanceId(instanceId)
    + block.withName(name)
    + block.withRoutingProfileId(routingProfileId)
    + block.withSecurityProfileIds(securityProfileIds)
  ),
  withDirectoryUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_user_id" expected to be of type "string"';
    {
      directory_user_id: converted,
    }
  ),
  withHierarchyGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"hierarchy_group_id" expected to be of type "string"';
    {
      hierarchy_group_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
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
  withRoutingProfileId(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_profile_id" expected to be of type "string"';
    {
      routing_profile_id: converted,
    }
  ),
  withSecurityProfileIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_profile_ids" expected to be of type "set"';
    {
      security_profile_ids: converted,
    }
  ),
  withSecurityProfileIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_profile_ids" expected to be of type "set"';
    {
      security_profile_ids+: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  identity_info:: {
    local block = self,
    new():: (
      {}
    ),
    withEmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    withFirstName(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    withLastName(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    withSecondaryEmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"secondary_email" expected to be of type "string"';
      {
        secondary_email: converted,
      }
    ),
  },
  phone_config:: {
    local block = self,
    new(phoneType):: (
      {}
      + block.withPhoneType(phoneType)
    ),
    withAfterContactWorkTimeLimit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"after_contact_work_time_limit" expected to be of type "number"';
      {
        after_contact_work_time_limit: converted,
      }
    ),
    withAutoAccept(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"auto_accept" expected to be of type "bool"';
      {
        auto_accept: converted,
      }
    ),
    withDeskPhoneNumber(value):: (
      local converted = value;
      assert std.isString(converted) : '"desk_phone_number" expected to be of type "string"';
      {
        desk_phone_number: converted,
      }
    ),
    withPhoneType(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_type" expected to be of type "string"';
      {
        phone_type: converted,
      }
    ),
  },
  withIdentityInfo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identity_info: value,
    }
  ),
  withPhoneConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_config: value,
    }
  ),
  withIdentityInfoMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identity_info+: converted,
    }
  ),
  withPhoneConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_config+: converted,
    }
  ),
}
