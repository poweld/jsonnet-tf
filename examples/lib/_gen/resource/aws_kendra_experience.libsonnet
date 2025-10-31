{
  local block = self,
  new(terraformName, indexId, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_experience",
          type:: "resource",
          attributes:: ["arn", "description", "endpoints", "experience_id", "id", "index_id", "name", "region", "role_arn", "status"],
        },
      },
    }
    + block.withIndexId(indexId)
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIndexId(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    content_source_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      withDataSourceIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_source_ids" expected to be of type "set"';
        {
          data_source_ids: converted,
        }
      ),
      withDataSourceIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_source_ids" expected to be of type "set"';
        {
          data_source_ids+: converted,
        }
      ),
      withDirectPutContent(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"direct_put_content" expected to be of type "bool"';
        {
          direct_put_content: converted,
        }
      ),
      withFaqIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"faq_ids" expected to be of type "set"';
        {
          faq_ids: converted,
        }
      ),
      withFaqIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"faq_ids" expected to be of type "set"';
        {
          faq_ids+: converted,
        }
      ),
    },
    user_identity_configuration:: {
      local block = self,
      new(identityAttributeName):: (
        {}
        + block.withIdentityAttributeName(identityAttributeName)
      ),
      withIdentityAttributeName(value):: (
        local converted = value;
        assert std.isString(converted) : '"identity_attribute_name" expected to be of type "string"';
        {
          identity_attribute_name: converted,
        }
      ),
    },
    withContentSourceConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_source_configuration: value,
      }
    ),
    withUserIdentityConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_identity_configuration: value,
      }
    ),
    withContentSourceConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_source_configuration+: converted,
      }
    ),
    withUserIdentityConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_identity_configuration+: converted,
      }
    ),
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
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
