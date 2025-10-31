{
  local block = self,
  new(terraformName, dataAccessRoleArn, languageCode, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_comprehend_entity_recognizer",
          type:: "resource",
          attributes:: ["arn", "data_access_role_arn", "id", "language_code", "model_kms_key_id", "name", "region", "tags", "tags_all", "version_name", "version_name_prefix", "volume_kms_key_id"],
        },
      },
    }
    + block.withDataAccessRoleArn(dataAccessRoleArn)
    + block.withLanguageCode(languageCode)
    + block.withName(name)
  ),
  withDataAccessRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_access_role_arn" expected to be of type "string"';
    {
      data_access_role_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLanguageCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
    }
  ),
  withModelKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_kms_key_id" expected to be of type "string"';
    {
      model_kms_key_id: converted,
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
  withVersionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_name" expected to be of type "string"';
    {
      version_name: converted,
    }
  ),
  withVersionNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_name_prefix" expected to be of type "string"';
    {
      version_name_prefix: converted,
    }
  ),
  withVolumeKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_kms_key_id" expected to be of type "string"';
    {
      volume_kms_key_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  input_data_config:: {
    local block = self,
    new():: (
      {}
    ),
    withDataFormat(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_format" expected to be of type "string"';
      {
        data_format: converted,
      }
    ),
    annotations:: {
      local block = self,
      new(s3Uri):: (
        {}
        + block.withS3Uri(s3Uri)
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
      withTestS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"test_s3_uri" expected to be of type "string"';
        {
          test_s3_uri: converted,
        }
      ),
    },
    augmented_manifests:: {
      local block = self,
      new(attributeNames, s3Uri):: (
        {}
        + block.withAttributeNames(attributeNames)
        + block.withS3Uri(s3Uri)
      ),
      withAnnotationDataS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"annotation_data_s3_uri" expected to be of type "string"';
        {
          annotation_data_s3_uri: converted,
        }
      ),
      withAttributeNames(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"attribute_names" expected to be of type "list"';
        {
          attribute_names: converted,
        }
      ),
      withAttributeNamesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"attribute_names" expected to be of type "list"';
        {
          attribute_names+: converted,
        }
      ),
      withDocumentType(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_type" expected to be of type "string"';
        {
          document_type: converted,
        }
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
      withSourceDocumentsS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_documents_s3_uri" expected to be of type "string"';
        {
          source_documents_s3_uri: converted,
        }
      ),
      withSplit(value):: (
        local converted = value;
        assert std.isString(converted) : '"split" expected to be of type "string"';
        {
          split: converted,
        }
      ),
    },
    documents:: {
      local block = self,
      new(s3Uri):: (
        {}
        + block.withS3Uri(s3Uri)
      ),
      withInputFormat(value):: (
        local converted = value;
        assert std.isString(converted) : '"input_format" expected to be of type "string"';
        {
          input_format: converted,
        }
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
      withTestS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"test_s3_uri" expected to be of type "string"';
        {
          test_s3_uri: converted,
        }
      ),
    },
    entity_list:: {
      local block = self,
      new(s3Uri):: (
        {}
        + block.withS3Uri(s3Uri)
      ),
      withS3Uri(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_uri" expected to be of type "string"';
        {
          s3_uri: converted,
        }
      ),
    },
    entity_types:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    withAnnotations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        annotations: value,
      }
    ),
    withAugmentedManifests(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        augmented_manifests: value,
      }
    ),
    withDocuments(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        documents: value,
      }
    ),
    withEntityList(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_list: value,
      }
    ),
    withEntityTypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_types: value,
      }
    ),
    withAnnotationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        annotations+: converted,
      }
    ),
    withAugmentedManifestsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        augmented_manifests+: converted,
      }
    ),
    withDocumentsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        documents+: converted,
      }
    ),
    withEntityListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_list+: converted,
      }
    ),
    withEntityTypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        entity_types+: converted,
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
  vpc_config:: {
    local block = self,
    new(securityGroupIds, subnets):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnets(subnets)
    ),
    withSecurityGroupIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    withSecurityGroupIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    withSubnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    withSubnetsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
  },
  withInputDataConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withInputDataConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_data_config+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
