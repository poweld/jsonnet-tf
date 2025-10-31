{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_server",
          type:: "resource",
          attributes:: ["arn", "certificate", "directory_id", "domain", "endpoint", "endpoint_type", "force_destroy", "function", "host_key", "host_key_fingerprint", "id", "identity_provider_type", "invocation_role", "logging_role", "post_authentication_login_banner", "pre_authentication_login_banner", "protocols", "region", "security_policy_name", "sftp_authentication_methods", "structured_log_destinations", "tags", "tags_all", "url"],
        },
      },
    }
  ),
  withCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withEndpointType(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
    {
      endpoint_type: converted,
    }
  ),
  withForceDestroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  withFunction(value):: (
    local converted = value;
    assert std.isString(converted) : '"function" expected to be of type "string"';
    {
      "function": converted,
    }
  ),
  withHostKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_key" expected to be of type "string"';
    {
      host_key: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withIdentityProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider_type" expected to be of type "string"';
    {
      identity_provider_type: converted,
    }
  ),
  withInvocationRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"invocation_role" expected to be of type "string"';
    {
      invocation_role: converted,
    }
  ),
  withLoggingRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"logging_role" expected to be of type "string"';
    {
      logging_role: converted,
    }
  ),
  withPostAuthenticationLoginBanner(value):: (
    local converted = value;
    assert std.isString(converted) : '"post_authentication_login_banner" expected to be of type "string"';
    {
      post_authentication_login_banner: converted,
    }
  ),
  withPreAuthenticationLoginBanner(value):: (
    local converted = value;
    assert std.isString(converted) : '"pre_authentication_login_banner" expected to be of type "string"';
    {
      pre_authentication_login_banner: converted,
    }
  ),
  withProtocols(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols: converted,
    }
  ),
  withProtocolsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols+: converted,
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
  withSecurityPolicyName(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_policy_name" expected to be of type "string"';
    {
      security_policy_name: converted,
    }
  ),
  withSftpAuthenticationMethods(value):: (
    local converted = value;
    assert std.isString(converted) : '"sftp_authentication_methods" expected to be of type "string"';
    {
      sftp_authentication_methods: converted,
    }
  ),
  "#withStructuredLogDestinations":: "This is a set of arns of destinations that will receive structured logs from the transfer server",
  withStructuredLogDestinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"structured_log_destinations" expected to be of type "set"';
    {
      structured_log_destinations: converted,
    }
  ),
  "#withStructuredLogDestinationsMixin":: "This is a set of arns of destinations that will receive structured logs from the transfer server",
  withStructuredLogDestinationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"structured_log_destinations" expected to be of type "set"';
    {
      structured_log_destinations+: converted,
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
  withUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  endpoint_details:: {
    local block = self,
    new():: (
      {}
    ),
    withAddressAllocationIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"address_allocation_ids" expected to be of type "set"';
      {
        address_allocation_ids: converted,
      }
    ),
    withAddressAllocationIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"address_allocation_ids" expected to be of type "set"';
      {
        address_allocation_ids+: converted,
      }
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
    withSubnetIds(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    withSubnetIdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    withVpcEndpointId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
      {
        vpc_endpoint_id: converted,
      }
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  protocol_details:: {
    local block = self,
    new():: (
      {}
    ),
    withAs2Transports(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"as2_transports" expected to be of type "set"';
      {
        as2_transports: converted,
      }
    ),
    withAs2TransportsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"as2_transports" expected to be of type "set"';
      {
        as2_transports+: converted,
      }
    ),
    withPassiveIp(value):: (
      local converted = value;
      assert std.isString(converted) : '"passive_ip" expected to be of type "string"';
      {
        passive_ip: converted,
      }
    ),
    withSetStatOption(value):: (
      local converted = value;
      assert std.isString(converted) : '"set_stat_option" expected to be of type "string"';
      {
        set_stat_option: converted,
      }
    ),
    withTlsSessionResumptionMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_session_resumption_mode" expected to be of type "string"';
      {
        tls_session_resumption_mode: converted,
      }
    ),
  },
  s3_storage_options:: {
    local block = self,
    new():: (
      {}
    ),
    withDirectoryListingOptimization(value):: (
      local converted = value;
      assert std.isString(converted) : '"directory_listing_optimization" expected to be of type "string"';
      {
        directory_listing_optimization: converted,
      }
    ),
  },
  workflow_details:: {
    local block = self,
    new():: (
      {}
    ),
    on_partial_upload:: {
      local block = self,
      new(executionRole, workflowId):: (
        {}
        + block.withExecutionRole(executionRole)
        + block.withWorkflowId(workflowId)
      ),
      withExecutionRole(value):: (
        local converted = value;
        assert std.isString(converted) : '"execution_role" expected to be of type "string"';
        {
          execution_role: converted,
        }
      ),
      withWorkflowId(value):: (
        local converted = value;
        assert std.isString(converted) : '"workflow_id" expected to be of type "string"';
        {
          workflow_id: converted,
        }
      ),
    },
    on_upload:: {
      local block = self,
      new(executionRole, workflowId):: (
        {}
        + block.withExecutionRole(executionRole)
        + block.withWorkflowId(workflowId)
      ),
      withExecutionRole(value):: (
        local converted = value;
        assert std.isString(converted) : '"execution_role" expected to be of type "string"';
        {
          execution_role: converted,
        }
      ),
      withWorkflowId(value):: (
        local converted = value;
        assert std.isString(converted) : '"workflow_id" expected to be of type "string"';
        {
          workflow_id: converted,
        }
      ),
    },
    withOnPartialUpload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_partial_upload: value,
      }
    ),
    withOnUpload(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_upload: value,
      }
    ),
    withOnPartialUploadMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_partial_upload+: converted,
      }
    ),
    withOnUploadMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        on_upload+: converted,
      }
    ),
  },
  withEndpointDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_details: value,
    }
  ),
  withProtocolDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol_details: value,
    }
  ),
  withS3StorageOptions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_options: value,
    }
  ),
  withWorkflowDetails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow_details: value,
    }
  ),
  withEndpointDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_details+: converted,
    }
  ),
  withProtocolDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protocol_details+: converted,
    }
  ),
  withS3StorageOptionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      s3_storage_options+: converted,
    }
  ),
  withWorkflowDetailsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workflow_details+: converted,
    }
  ),
}
