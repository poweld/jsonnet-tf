{
  local block = self,
  new(terraformName, bucket):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3_bucket_website_configuration",
          type:: "resource",
          attributes:: ["bucket", "expected_bucket_owner", "id", "region", "routing_rules", "website_domain", "website_endpoint"],
        },
      },
    }
    + block.withBucket(bucket)
  ),
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  withExpectedBucketOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
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
  withRoutingRules(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_rules" expected to be of type "string"';
    {
      routing_rules: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  error_document:: {
    local block = self,
    new(key):: (
      {}
      + block.withKey(key)
    ),
    withKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
  },
  index_document:: {
    local block = self,
    new(suffix):: (
      {}
      + block.withSuffix(suffix)
    ),
    withSuffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"suffix" expected to be of type "string"';
      {
        suffix: converted,
      }
    ),
  },
  redirect_all_requests_to:: {
    local block = self,
    new(hostName):: (
      {}
      + block.withHostName(hostName)
    ),
    withHostName(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_name" expected to be of type "string"';
      {
        host_name: converted,
      }
    ),
    withProtocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
  },
  routing_rule:: {
    local block = self,
    new():: (
      {}
    ),
    condition:: {
      local block = self,
      new():: (
        {}
      ),
      withHttpErrorCodeReturnedEquals(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_error_code_returned_equals" expected to be of type "string"';
        {
          http_error_code_returned_equals: converted,
        }
      ),
      withKeyPrefixEquals(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix_equals" expected to be of type "string"';
        {
          key_prefix_equals: converted,
        }
      ),
    },
    redirect:: {
      local block = self,
      new():: (
        {}
      ),
      withHostName(value):: (
        local converted = value;
        assert std.isString(converted) : '"host_name" expected to be of type "string"';
        {
          host_name: converted,
        }
      ),
      withHttpRedirectCode(value):: (
        local converted = value;
        assert std.isString(converted) : '"http_redirect_code" expected to be of type "string"';
        {
          http_redirect_code: converted,
        }
      ),
      withProtocol(value):: (
        local converted = value;
        assert std.isString(converted) : '"protocol" expected to be of type "string"';
        {
          protocol: converted,
        }
      ),
      withReplaceKeyPrefixWith(value):: (
        local converted = value;
        assert std.isString(converted) : '"replace_key_prefix_with" expected to be of type "string"';
        {
          replace_key_prefix_with: converted,
        }
      ),
      withReplaceKeyWith(value):: (
        local converted = value;
        assert std.isString(converted) : '"replace_key_with" expected to be of type "string"';
        {
          replace_key_with: converted,
        }
      ),
    },
    withCondition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition: value,
      }
    ),
    withRedirect(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect: value,
      }
    ),
    withConditionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        condition+: converted,
      }
    ),
    withRedirectMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect+: converted,
      }
    ),
  },
  withErrorDocument(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_document: value,
    }
  ),
  withIndexDocument(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_document: value,
    }
  ),
  withRedirectAllRequestsTo(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redirect_all_requests_to: value,
    }
  ),
  withRoutingRule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_rule: value,
    }
  ),
  withErrorDocumentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      error_document+: converted,
    }
  ),
  withIndexDocumentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      index_document+: converted,
    }
  ),
  withRedirectAllRequestsToMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redirect_all_requests_to+: converted,
    }
  ),
  withRoutingRuleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      routing_rule+: converted,
    }
  ),
}
