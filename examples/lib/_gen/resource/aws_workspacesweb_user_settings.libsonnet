{
  local block = self,
  new(terraformName, copyAllowed, downloadAllowed, pasteAllowed, printAllowed, uploadAllowed):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_user_settings",
          type:: "resource",
          attributes:: ["additional_encryption_context", "associated_portal_arns", "copy_allowed", "customer_managed_key", "deep_link_allowed", "disconnect_timeout_in_minutes", "download_allowed", "idle_disconnect_timeout_in_minutes", "paste_allowed", "print_allowed", "region", "tags", "tags_all", "upload_allowed", "user_settings_arn"],
        },
      },
    }
    + block.withCopyAllowed(copyAllowed)
    + block.withDownloadAllowed(downloadAllowed)
    + block.withPasteAllowed(pasteAllowed)
    + block.withPrintAllowed(printAllowed)
    + block.withUploadAllowed(uploadAllowed)
  ),
  withAdditionalEncryptionContext(value):: (
    local converted = value;
    assert std.isObject(converted) : '"additional_encryption_context" expected to be of type "map"';
    {
      additional_encryption_context: converted,
    }
  ),
  withCopyAllowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"copy_allowed" expected to be of type "string"';
    {
      copy_allowed: converted,
    }
  ),
  withCustomerManagedKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_managed_key" expected to be of type "string"';
    {
      customer_managed_key: converted,
    }
  ),
  withDeepLinkAllowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"deep_link_allowed" expected to be of type "string"';
    {
      deep_link_allowed: converted,
    }
  ),
  withDisconnectTimeoutInMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"disconnect_timeout_in_minutes" expected to be of type "number"';
    {
      disconnect_timeout_in_minutes: converted,
    }
  ),
  withDownloadAllowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"download_allowed" expected to be of type "string"';
    {
      download_allowed: converted,
    }
  ),
  withIdleDisconnectTimeoutInMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_disconnect_timeout_in_minutes" expected to be of type "number"';
    {
      idle_disconnect_timeout_in_minutes: converted,
    }
  ),
  withPasteAllowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"paste_allowed" expected to be of type "string"';
    {
      paste_allowed: converted,
    }
  ),
  withPrintAllowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"print_allowed" expected to be of type "string"';
    {
      print_allowed: converted,
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
  withUploadAllowed(value):: (
    local converted = value;
    assert std.isString(converted) : '"upload_allowed" expected to be of type "string"';
    {
      upload_allowed: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  cookie_synchronization_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    allowlist:: {
      local block = self,
      new(domain):: (
        {}
        + block.withDomain(domain)
      ),
      withDomain(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain" expected to be of type "string"';
        {
          domain: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
    },
    blocklist:: {
      local block = self,
      new(domain):: (
        {}
        + block.withDomain(domain)
      ),
      withDomain(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain" expected to be of type "string"';
        {
          domain: converted,
        }
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
    },
    withAllowlist(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        allowlist: value,
      }
    ),
    withBlocklist(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blocklist: value,
      }
    ),
    withAllowlistMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        allowlist+: converted,
      }
    ),
    withBlocklistMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blocklist+: converted,
      }
    ),
  },
  toolbar_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withHiddenToolbarItems(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hidden_toolbar_items" expected to be of type "list"';
      {
        hidden_toolbar_items: converted,
      }
    ),
    withHiddenToolbarItemsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"hidden_toolbar_items" expected to be of type "list"';
      {
        hidden_toolbar_items+: converted,
      }
    ),
    withMaxDisplayResolution(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_display_resolution" expected to be of type "string"';
      {
        max_display_resolution: converted,
      }
    ),
    withToolbarType(value):: (
      local converted = value;
      assert std.isString(converted) : '"toolbar_type" expected to be of type "string"';
      {
        toolbar_type: converted,
      }
    ),
    withVisualMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"visual_mode" expected to be of type "string"';
      {
        visual_mode: converted,
      }
    ),
  },
  withCookieSynchronizationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookie_synchronization_configuration: value,
    }
  ),
  withToolbarConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      toolbar_configuration: value,
    }
  ),
  withCookieSynchronizationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cookie_synchronization_configuration+: converted,
    }
  ),
  withToolbarConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      toolbar_configuration+: converted,
    }
  ),
}
