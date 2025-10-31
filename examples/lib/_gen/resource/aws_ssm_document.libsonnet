{
  local block = self,
  new(terraformName, content, documentType, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_document",
          type:: "resource",
          attributes:: ["arn", "content", "created_date", "default_version", "description", "document_format", "document_type", "document_version", "hash", "hash_type", "id", "latest_version", "name", "owner", "parameter", "permissions", "platform_types", "region", "schema_version", "status", "tags", "tags_all", "target_type", "version_name"],
        },
      },
    }
    + block.withContent(content)
    + block.withDocumentType(documentType)
    + block.withName(name)
  ),
  withContent(value):: (
    local converted = value;
    assert std.isString(converted) : '"content" expected to be of type "string"';
    {
      content: converted,
    }
  ),
  withDocumentFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_format" expected to be of type "string"';
    {
      document_format: converted,
    }
  ),
  withDocumentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"document_type" expected to be of type "string"';
    {
      document_type: converted,
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
  withPermissions(value):: (
    local converted = value;
    assert std.isObject(converted) : '"permissions" expected to be of type "map"';
    {
      permissions: converted,
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
  withTargetType(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_type" expected to be of type "string"';
    {
      target_type: converted,
    }
  ),
  withVersionName(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_name" expected to be of type "string"';
    {
      version_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  attachments_source:: {
    local block = self,
    new(key, values):: (
      {}
      + block.withKey(key)
      + block.withValues(values)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValues(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    withValuesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  withAttachmentsSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_source: value,
    }
  ),
  withAttachmentsSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachments_source+: converted,
    }
  ),
}
