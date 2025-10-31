{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_securitylake_subscriber",
          type:: "resource",
          attributes:: ["access_type", "arn", "id", "region", "resource_share_arn", "resource_share_name", "role_arn", "s3_bucket_arn", "subscriber_description", "subscriber_endpoint", "subscriber_name", "subscriber_status", "tags", "tags_all"],
        },
      },
    }
  ),
  withAccessType(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_type" expected to be of type "string"';
    {
      access_type: converted,
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
  withSubscriberDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_description" expected to be of type "string"';
    {
      subscriber_description: converted,
    }
  ),
  withSubscriberName(value):: (
    local converted = value;
    assert std.isString(converted) : '"subscriber_name" expected to be of type "string"';
    {
      subscriber_name: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  source:: {
    local block = self,
    new():: (
      {}
    ),
    aws_log_source_resource:: {
      local block = self,
      new(sourceName):: (
        {}
        + block.withSourceName(sourceName)
      ),
      withSourceName(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_name" expected to be of type "string"';
        {
          source_name: converted,
        }
      ),
      withSourceVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_version" expected to be of type "string"';
        {
          source_version: converted,
        }
      ),
    },
    custom_log_source_resource:: {
      local block = self,
      new(sourceName):: (
        {}
        + block.withSourceName(sourceName)
      ),
      withSourceName(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_name" expected to be of type "string"';
        {
          source_name: converted,
        }
      ),
      withSourceVersion(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_version" expected to be of type "string"';
        {
          source_version: converted,
        }
      ),
    },
    withAwsLogSourceResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_log_source_resource: value,
      }
    ),
    withCustomLogSourceResource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_log_source_resource: value,
      }
    ),
    withAwsLogSourceResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_log_source_resource+: converted,
      }
    ),
    withCustomLogSourceResourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_log_source_resource+: converted,
      }
    ),
  },
  subscriber_identity:: {
    local block = self,
    new(externalId, principal):: (
      {}
      + block.withExternalId(externalId)
      + block.withPrincipal(principal)
    ),
    withExternalId(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_id" expected to be of type "string"';
      {
        external_id: converted,
      }
    ),
    withPrincipal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withSubscriberIdentity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber_identity: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
  withSubscriberIdentityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subscriber_identity+: converted,
    }
  ),
}
