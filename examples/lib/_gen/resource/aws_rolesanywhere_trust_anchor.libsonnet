{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rolesanywhere_trust_anchor",
          type:: "resource",
          attributes:: ["arn", "enabled", "id", "name", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
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
  notification_settings:: {
    local block = self,
    new():: (
      {}
    ),
    withChannel(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel" expected to be of type "string"';
      {
        channel: converted,
      }
    ),
    withEnabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    withEvent(value):: (
      local converted = value;
      assert std.isString(converted) : '"event" expected to be of type "string"';
      {
        event: converted,
      }
    ),
    withThreshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
      {
        threshold: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(sourceType):: (
      {}
      + block.withSourceType(sourceType)
    ),
    withSourceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_type" expected to be of type "string"';
      {
        source_type: converted,
      }
    ),
    source_data:: {
      local block = self,
      new():: (
        {}
      ),
      withAcmPcaArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"acm_pca_arn" expected to be of type "string"';
        {
          acm_pca_arn: converted,
        }
      ),
      withX509CertificateData(value):: (
        local converted = value;
        assert std.isString(converted) : '"x509_certificate_data" expected to be of type "string"';
        {
          x509_certificate_data: converted,
        }
      ),
    },
    withSourceData(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_data: value,
      }
    ),
    withSourceDataMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_data+: converted,
      }
    ),
  },
  withNotificationSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_settings: value,
    }
  ),
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withNotificationSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_settings+: converted,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
}
