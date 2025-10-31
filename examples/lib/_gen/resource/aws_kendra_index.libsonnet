{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_kendra_index",
          type:: "resource",
          attributes:: ["arn", "created_at", "description", "edition", "error_message", "id", "index_statistics", "name", "region", "role_arn", "status", "tags", "tags_all", "updated_at", "user_context_policy"],
        },
      },
    }
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
  withEdition(value):: (
    local converted = value;
    assert std.isString(converted) : '"edition" expected to be of type "string"';
    {
      edition: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  withUserContextPolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_context_policy" expected to be of type "string"';
    {
      user_context_policy: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  capacity_units:: {
    local block = self,
    new():: (
      {}
    ),
    withQueryCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"query_capacity_units" expected to be of type "number"';
      {
        query_capacity_units: converted,
      }
    ),
    withStorageCapacityUnits(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"storage_capacity_units" expected to be of type "number"';
      {
        storage_capacity_units: converted,
      }
    ),
  },
  document_metadata_configuration_updates:: {
    local block = self,
    new(name, type):: (
      {}
      + block.withName(name)
      + block.withType(type)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    relevance:: {
      local block = self,
      new():: (
        {}
      ),
      withDuration(value):: (
        local converted = value;
        assert std.isString(converted) : '"duration" expected to be of type "string"';
        {
          duration: converted,
        }
      ),
      withFreshness(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"freshness" expected to be of type "bool"';
        {
          freshness: converted,
        }
      ),
      withImportance(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"importance" expected to be of type "number"';
        {
          importance: converted,
        }
      ),
      withRankOrder(value):: (
        local converted = value;
        assert std.isString(converted) : '"rank_order" expected to be of type "string"';
        {
          rank_order: converted,
        }
      ),
      withValuesImportanceMap(value):: (
        local converted = value;
        assert std.isObject(converted) : '"values_importance_map" expected to be of type "map"';
        {
          values_importance_map: converted,
        }
      ),
    },
    search:: {
      local block = self,
      new():: (
        {}
      ),
      withDisplayable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"displayable" expected to be of type "bool"';
        {
          displayable: converted,
        }
      ),
      withFacetable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"facetable" expected to be of type "bool"';
        {
          facetable: converted,
        }
      ),
      withSearchable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"searchable" expected to be of type "bool"';
        {
          searchable: converted,
        }
      ),
      withSortable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"sortable" expected to be of type "bool"';
        {
          sortable: converted,
        }
      ),
    },
    withRelevance(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relevance: value,
      }
    ),
    withSearch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        search: value,
      }
    ),
    withRelevanceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        relevance+: converted,
      }
    ),
    withSearchMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        search+: converted,
      }
    ),
  },
  server_side_encryption_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
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
  user_group_resolution_configuration:: {
    local block = self,
    new(userGroupResolutionMode):: (
      {}
      + block.withUserGroupResolutionMode(userGroupResolutionMode)
    ),
    withUserGroupResolutionMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_group_resolution_mode" expected to be of type "string"';
      {
        user_group_resolution_mode: converted,
      }
    ),
  },
  user_token_configurations:: {
    local block = self,
    new():: (
      {}
    ),
    json_token_type_configuration:: {
      local block = self,
      new(groupAttributeField, userNameAttributeField):: (
        {}
        + block.withGroupAttributeField(groupAttributeField)
        + block.withUserNameAttributeField(userNameAttributeField)
      ),
      withGroupAttributeField(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_attribute_field" expected to be of type "string"';
        {
          group_attribute_field: converted,
        }
      ),
      withUserNameAttributeField(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_name_attribute_field" expected to be of type "string"';
        {
          user_name_attribute_field: converted,
        }
      ),
    },
    jwt_token_type_configuration:: {
      local block = self,
      new(keyLocation):: (
        {}
        + block.withKeyLocation(keyLocation)
      ),
      withClaimRegex(value):: (
        local converted = value;
        assert std.isString(converted) : '"claim_regex" expected to be of type "string"';
        {
          claim_regex: converted,
        }
      ),
      withGroupAttributeField(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_attribute_field" expected to be of type "string"';
        {
          group_attribute_field: converted,
        }
      ),
      withIssuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
      withKeyLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_location" expected to be of type "string"';
        {
          key_location: converted,
        }
      ),
      withSecretsManagerArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"secrets_manager_arn" expected to be of type "string"';
        {
          secrets_manager_arn: converted,
        }
      ),
      withUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"url" expected to be of type "string"';
        {
          url: converted,
        }
      ),
      withUserNameAttributeField(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_name_attribute_field" expected to be of type "string"';
        {
          user_name_attribute_field: converted,
        }
      ),
    },
    withJsonTokenTypeConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        json_token_type_configuration: value,
      }
    ),
    withJwtTokenTypeConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jwt_token_type_configuration: value,
      }
    ),
    withJsonTokenTypeConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        json_token_type_configuration+: converted,
      }
    ),
    withJwtTokenTypeConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jwt_token_type_configuration+: converted,
      }
    ),
  },
  withCapacityUnits(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_units: value,
    }
  ),
  withDocumentMetadataConfigurationUpdates(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_metadata_configuration_updates: value,
    }
  ),
  withServerSideEncryptionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withUserGroupResolutionConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_group_resolution_configuration: value,
    }
  ),
  withUserTokenConfigurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_token_configurations: value,
    }
  ),
  withCapacityUnitsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_units+: converted,
    }
  ),
  withDocumentMetadataConfigurationUpdatesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      document_metadata_configuration_updates+: converted,
    }
  ),
  withServerSideEncryptionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      server_side_encryption_configuration+: converted,
    }
  ),
  withUserGroupResolutionConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_group_resolution_configuration+: converted,
    }
  ),
  withUserTokenConfigurationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_token_configurations+: converted,
    }
  ),
}
