{
  version:: "~> 6.13.0",
  source:: "hashicorp/aws",
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "registry.terraform.io/hashicorp/aws",
          type:: "provider",
          attributes:: ["access_key", "allowed_account_ids", "custom_ca_bundle", "ec2_metadata_service_endpoint", "ec2_metadata_service_endpoint_mode", "forbidden_account_ids", "http_proxy", "https_proxy", "insecure", "max_retries", "no_proxy", "profile", "region", "retry_mode", "s3_us_east_1_regional_endpoint", "s3_use_path_style", "secret_key", "shared_config_files", "shared_credentials_files", "skip_credentials_validation", "skip_metadata_api_check", "skip_region_validation", "skip_requesting_account_id", "sts_region", "token", "token_bucket_rate_limiter_capacity", "use_dualstack_endpoint", "use_fips_endpoint"],
        },
      },
    }
  ),
  "#withAccessKey":: "The access key for API operations. You can retrieve this from the 'Security & Credentials' section of the AWS console.",
  withAccessKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_key" expected to be of type "string"';
    {
      access_key: converted,
    }
  ),
  withAllowedAccountIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_account_ids" expected to be of type "set"';
    {
      allowed_account_ids: converted,
    }
  ),
  withAllowedAccountIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_account_ids" expected to be of type "set"';
    {
      allowed_account_ids+: converted,
    }
  ),
  "#withCustomCaBundle":: "File containing custom root and intermediate certificates. Can also be configured using the `AWS_CA_BUNDLE` environment variable. (Setting `ca_bundle` in the shared config file is not supported.)",
  withCustomCaBundle(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_ca_bundle" expected to be of type "string"';
    {
      custom_ca_bundle: converted,
    }
  ),
  "#withEc2MetadataServiceEndpoint":: "Address of the EC2 metadata service endpoint to use. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT` environment variable.",
  withEc2MetadataServiceEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"ec2_metadata_service_endpoint" expected to be of type "string"';
    {
      ec2_metadata_service_endpoint: converted,
    }
  ),
  "#withEc2MetadataServiceEndpointMode":: "Protocol to use with EC2 metadata service endpoint.Valid values are `IPv4` and `IPv6`. Can also be configured using the `AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE` environment variable.",
  withEc2MetadataServiceEndpointMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ec2_metadata_service_endpoint_mode" expected to be of type "string"';
    {
      ec2_metadata_service_endpoint_mode: converted,
    }
  ),
  withForbiddenAccountIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"forbidden_account_ids" expected to be of type "set"';
    {
      forbidden_account_ids: converted,
    }
  ),
  withForbiddenAccountIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"forbidden_account_ids" expected to be of type "set"';
    {
      forbidden_account_ids+: converted,
    }
  ),
  "#withHttpProxy":: "URL of a proxy to use for HTTP requests when accessing the AWS API. Can also be set using the `HTTP_PROXY` or `http_proxy` environment variables.",
  withHttpProxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_proxy" expected to be of type "string"';
    {
      http_proxy: converted,
    }
  ),
  "#withHttpsProxy":: "URL of a proxy to use for HTTPS requests when accessing the AWS API. Can also be set using the `HTTPS_PROXY` or `https_proxy` environment variables.",
  withHttpsProxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"https_proxy" expected to be of type "string"';
    {
      https_proxy: converted,
    }
  ),
  "#withInsecure":: "Explicitly allow the provider to perform 'insecure' SSL requests. If omitted, default value is `false`",
  withInsecure(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"insecure" expected to be of type "bool"';
    {
      insecure: converted,
    }
  ),
  "#withMaxRetries":: "The maximum number of times an AWS API request is being executed. If the API request still fails, an error is thrown.",
  withMaxRetries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  "#withNoProxy":: "Comma-separated list of hosts that should not use HTTP or HTTPS proxies. Can also be set using the `NO_PROXY` or `no_proxy` environment variables.",
  withNoProxy(value):: (
    local converted = value;
    assert std.isString(converted) : '"no_proxy" expected to be of type "string"';
    {
      no_proxy: converted,
    }
  ),
  "#withProfile":: "The profile for API operations. If not set, the default profile created with `aws configure` will be used.",
  withProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  "#withRegion":: "The region where AWS operations will take place. Examples are us-east-1, us-west-2, etc.",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  "#withRetryMode":: "Specifies how retries are attempted. Valid values are `standard` and `adaptive`. Can also be configured using the `AWS_RETRY_MODE` environment variable.",
  withRetryMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"retry_mode" expected to be of type "string"';
    {
      retry_mode: converted,
    }
  ),
  "#withS3UsEast_1RegionalEndpoint":: "Specifies whether S3 API calls in the `us-east-1` region use the legacy global endpoint or a regional endpoint. Valid values are `legacy` or `regional`. Can also be configured using the `AWS_S3_US_EAST_1_REGIONAL_ENDPOINT` environment variable or the `s3_us_east_1_regional_endpoint` shared config file parameter",
  withS3UsEast_1RegionalEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_us_east_1_regional_endpoint" expected to be of type "string"';
    {
      s3_us_east_1_regional_endpoint: converted,
    }
  ),
  "#withS3UsePathStyle":: "Set this to true to enable the request to use path-style addressing, i.e., https://s3.amazonaws.com/BUCKET/KEY. By default, the S3 client will use virtual hosted bucket addressing when possible (https://BUCKET.s3.amazonaws.com/KEY). Specific to the Amazon S3 service.",
  withS3UsePathStyle(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"s3_use_path_style" expected to be of type "bool"';
    {
      s3_use_path_style: converted,
    }
  ),
  "#withSecretKey":: "The secret key for API operations. You can retrieve this from the 'Security & Credentials' section of the AWS console.",
  withSecretKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_key" expected to be of type "string"';
    {
      secret_key: converted,
    }
  ),
  "#withSharedConfigFiles":: "List of paths to shared config files. If not set, defaults to [~/.aws/config].",
  withSharedConfigFiles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_config_files" expected to be of type "list"';
    {
      shared_config_files: converted,
    }
  ),
  "#withSharedConfigFilesMixin":: "List of paths to shared config files. If not set, defaults to [~/.aws/config].",
  withSharedConfigFilesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_config_files" expected to be of type "list"';
    {
      shared_config_files+: converted,
    }
  ),
  "#withSharedCredentialsFiles":: "List of paths to shared credentials files. If not set, defaults to [~/.aws/credentials].",
  withSharedCredentialsFiles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_credentials_files" expected to be of type "list"';
    {
      shared_credentials_files: converted,
    }
  ),
  "#withSharedCredentialsFilesMixin":: "List of paths to shared credentials files. If not set, defaults to [~/.aws/credentials].",
  withSharedCredentialsFilesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"shared_credentials_files" expected to be of type "list"';
    {
      shared_credentials_files+: converted,
    }
  ),
  "#withSkipCredentialsValidation":: "Skip the credentials validation via STS API. Used for AWS API implementations that do not have STS available/implemented.",
  withSkipCredentialsValidation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_credentials_validation" expected to be of type "bool"';
    {
      skip_credentials_validation: converted,
    }
  ),
  "#withSkipMetadataApiCheck":: "Skip the AWS Metadata API check. Used for AWS API implementations that do not have a metadata api endpoint.",
  withSkipMetadataApiCheck(value):: (
    local converted = value;
    assert std.isString(converted) : '"skip_metadata_api_check" expected to be of type "string"';
    {
      skip_metadata_api_check: converted,
    }
  ),
  "#withSkipRegionValidation":: "Skip static validation of region name. Used by users of alternative AWS-like APIs or users w/ access to regions that are not public (yet).",
  withSkipRegionValidation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_region_validation" expected to be of type "bool"';
    {
      skip_region_validation: converted,
    }
  ),
  "#withSkipRequestingAccountId":: "Skip requesting the account ID. Used for AWS API implementations that do not have IAM/STS API and/or metadata API.",
  withSkipRequestingAccountId(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_requesting_account_id" expected to be of type "bool"';
    {
      skip_requesting_account_id: converted,
    }
  ),
  "#withStsRegion":: "The region where AWS STS operations will take place. Examples are us-east-1 and us-west-2.",
  withStsRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"sts_region" expected to be of type "string"';
    {
      sts_region: converted,
    }
  ),
  "#withToken":: "session token. A session token is only required if you are using temporary security credentials.",
  withToken(value):: (
    local converted = value;
    assert std.isString(converted) : '"token" expected to be of type "string"';
    {
      token: converted,
    }
  ),
  "#withTokenBucketRateLimiterCapacity":: "The capacity of the AWS SDK's token bucket rate limiter.",
  withTokenBucketRateLimiterCapacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"token_bucket_rate_limiter_capacity" expected to be of type "number"';
    {
      token_bucket_rate_limiter_capacity: converted,
    }
  ),
  "#withUseDualstackEndpoint":: "Resolve an endpoint with DualStack capability",
  withUseDualstackEndpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_dualstack_endpoint" expected to be of type "bool"';
    {
      use_dualstack_endpoint: converted,
    }
  ),
  "#withUseFipsEndpoint":: "Resolve an endpoint with FIPS capability",
  withUseFipsEndpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_fips_endpoint" expected to be of type "bool"';
    {
      use_fips_endpoint: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  assume_role:: {
    local block = self,
    new():: (
      {}
    ),
    "#withDuration":: "The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.",
    withDuration(value):: (
      local converted = value;
      assert std.isString(converted) : '"duration" expected to be of type "string"';
      {
        duration: converted,
      }
    ),
    "#withExternalId":: "A unique identifier that might be required when you assume a role in another account.",
    withExternalId(value):: (
      local converted = value;
      assert std.isString(converted) : '"external_id" expected to be of type "string"';
      {
        external_id: converted,
      }
    ),
    "#withPolicy":: "IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.",
    withPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy" expected to be of type "string"';
      {
        policy: converted,
      }
    ),
    "#withPolicyArns":: "Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.",
    withPolicyArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns: converted,
      }
    ),
    "#withPolicyArnsMixin":: "Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.",
    withPolicyArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns+: converted,
      }
    ),
    "#withRoleArn":: "Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.",
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    "#withSessionName":: "An identifier for the assumed role session.",
    withSessionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"session_name" expected to be of type "string"';
      {
        session_name: converted,
      }
    ),
    "#withSourceIdentity":: "Source identity specified by the principal assuming the role.",
    withSourceIdentity(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identity" expected to be of type "string"';
      {
        source_identity: converted,
      }
    ),
    "#withTags":: "Assume role session tags.",
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    "#withTransitiveTagKeys":: "Assume role session tag keys to pass to any subsequent sessions.",
    withTransitiveTagKeys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transitive_tag_keys" expected to be of type "set"';
      {
        transitive_tag_keys: converted,
      }
    ),
    "#withTransitiveTagKeysMixin":: "Assume role session tag keys to pass to any subsequent sessions.",
    withTransitiveTagKeysMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transitive_tag_keys" expected to be of type "set"';
      {
        transitive_tag_keys+: converted,
      }
    ),
  },
  assume_role_with_web_identity:: {
    local block = self,
    new():: (
      {}
    ),
    "#withDuration":: "The duration, between 15 minutes and 12 hours, of the role session. Valid time units are ns, us (or µs), ms, s, h, or m.",
    withDuration(value):: (
      local converted = value;
      assert std.isString(converted) : '"duration" expected to be of type "string"';
      {
        duration: converted,
      }
    ),
    "#withPolicy":: "IAM Policy JSON describing further restricting permissions for the IAM Role being assumed.",
    withPolicy(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy" expected to be of type "string"';
      {
        policy: converted,
      }
    ),
    "#withPolicyArns":: "Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.",
    withPolicyArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns: converted,
      }
    ),
    "#withPolicyArnsMixin":: "Amazon Resource Names (ARNs) of IAM Policies describing further restricting permissions for the IAM Role being assumed.",
    withPolicyArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
      {
        policy_arns+: converted,
      }
    ),
    "#withRoleArn":: "Amazon Resource Name (ARN) of an IAM Role to assume prior to making API calls.",
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    "#withSessionName":: "An identifier for the assumed role session.",
    withSessionName(value):: (
      local converted = value;
      assert std.isString(converted) : '"session_name" expected to be of type "string"';
      {
        session_name: converted,
      }
    ),
    withWebIdentityToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"web_identity_token" expected to be of type "string"';
      {
        web_identity_token: converted,
      }
    ),
    withWebIdentityTokenFile(value):: (
      local converted = value;
      assert std.isString(converted) : '"web_identity_token_file" expected to be of type "string"';
      {
        web_identity_token_file: converted,
      }
    ),
  },
  default_tags:: {
    local block = self,
    new():: (
      {}
    ),
    "#withTags":: "Resource tags to default across all resources. Can also be configured with environment variables like `TF_AWS_DEFAULT_TAGS_<tag_name>`.",
    withTags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
  },
  endpoints:: {
    local block = self,
    new():: (
      {}
    ),
    "#withAccessanalyzer":: "Use this to override the default service endpoint URL",
    withAccessanalyzer(value):: (
      local converted = value;
      assert std.isString(converted) : '"accessanalyzer" expected to be of type "string"';
      {
        accessanalyzer: converted,
      }
    ),
    "#withAccount":: "Use this to override the default service endpoint URL",
    withAccount(value):: (
      local converted = value;
      assert std.isString(converted) : '"account" expected to be of type "string"';
      {
        account: converted,
      }
    ),
    "#withAcm":: "Use this to override the default service endpoint URL",
    withAcm(value):: (
      local converted = value;
      assert std.isString(converted) : '"acm" expected to be of type "string"';
      {
        acm: converted,
      }
    ),
    "#withAcmpca":: "Use this to override the default service endpoint URL",
    withAcmpca(value):: (
      local converted = value;
      assert std.isString(converted) : '"acmpca" expected to be of type "string"';
      {
        acmpca: converted,
      }
    ),
    "#withAmg":: "Use this to override the default service endpoint URL",
    withAmg(value):: (
      local converted = value;
      assert std.isString(converted) : '"amg" expected to be of type "string"';
      {
        amg: converted,
      }
    ),
    "#withAmp":: "Use this to override the default service endpoint URL",
    withAmp(value):: (
      local converted = value;
      assert std.isString(converted) : '"amp" expected to be of type "string"';
      {
        amp: converted,
      }
    ),
    "#withAmplify":: "Use this to override the default service endpoint URL",
    withAmplify(value):: (
      local converted = value;
      assert std.isString(converted) : '"amplify" expected to be of type "string"';
      {
        amplify: converted,
      }
    ),
    "#withApigateway":: "Use this to override the default service endpoint URL",
    withApigateway(value):: (
      local converted = value;
      assert std.isString(converted) : '"apigateway" expected to be of type "string"';
      {
        apigateway: converted,
      }
    ),
    "#withApigatewayv2":: "Use this to override the default service endpoint URL",
    withApigatewayv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"apigatewayv2" expected to be of type "string"';
      {
        apigatewayv2: converted,
      }
    ),
    "#withAppautoscaling":: "Use this to override the default service endpoint URL",
    withAppautoscaling(value):: (
      local converted = value;
      assert std.isString(converted) : '"appautoscaling" expected to be of type "string"';
      {
        appautoscaling: converted,
      }
    ),
    "#withAppconfig":: "Use this to override the default service endpoint URL",
    withAppconfig(value):: (
      local converted = value;
      assert std.isString(converted) : '"appconfig" expected to be of type "string"';
      {
        appconfig: converted,
      }
    ),
    "#withAppfabric":: "Use this to override the default service endpoint URL",
    withAppfabric(value):: (
      local converted = value;
      assert std.isString(converted) : '"appfabric" expected to be of type "string"';
      {
        appfabric: converted,
      }
    ),
    "#withAppflow":: "Use this to override the default service endpoint URL",
    withAppflow(value):: (
      local converted = value;
      assert std.isString(converted) : '"appflow" expected to be of type "string"';
      {
        appflow: converted,
      }
    ),
    "#withAppintegrations":: "Use this to override the default service endpoint URL",
    withAppintegrations(value):: (
      local converted = value;
      assert std.isString(converted) : '"appintegrations" expected to be of type "string"';
      {
        appintegrations: converted,
      }
    ),
    "#withAppintegrationsservice":: "Use this to override the default service endpoint URL",
    withAppintegrationsservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"appintegrationsservice" expected to be of type "string"';
      {
        appintegrationsservice: converted,
      }
    ),
    "#withApplicationautoscaling":: "Use this to override the default service endpoint URL",
    withApplicationautoscaling(value):: (
      local converted = value;
      assert std.isString(converted) : '"applicationautoscaling" expected to be of type "string"';
      {
        applicationautoscaling: converted,
      }
    ),
    "#withApplicationinsights":: "Use this to override the default service endpoint URL",
    withApplicationinsights(value):: (
      local converted = value;
      assert std.isString(converted) : '"applicationinsights" expected to be of type "string"';
      {
        applicationinsights: converted,
      }
    ),
    "#withApplicationsignals":: "Use this to override the default service endpoint URL",
    withApplicationsignals(value):: (
      local converted = value;
      assert std.isString(converted) : '"applicationsignals" expected to be of type "string"';
      {
        applicationsignals: converted,
      }
    ),
    "#withAppmesh":: "Use this to override the default service endpoint URL",
    withAppmesh(value):: (
      local converted = value;
      assert std.isString(converted) : '"appmesh" expected to be of type "string"';
      {
        appmesh: converted,
      }
    ),
    "#withAppregistry":: "Use this to override the default service endpoint URL",
    withAppregistry(value):: (
      local converted = value;
      assert std.isString(converted) : '"appregistry" expected to be of type "string"';
      {
        appregistry: converted,
      }
    ),
    "#withApprunner":: "Use this to override the default service endpoint URL",
    withApprunner(value):: (
      local converted = value;
      assert std.isString(converted) : '"apprunner" expected to be of type "string"';
      {
        apprunner: converted,
      }
    ),
    "#withAppstream":: "Use this to override the default service endpoint URL",
    withAppstream(value):: (
      local converted = value;
      assert std.isString(converted) : '"appstream" expected to be of type "string"';
      {
        appstream: converted,
      }
    ),
    "#withAppsync":: "Use this to override the default service endpoint URL",
    withAppsync(value):: (
      local converted = value;
      assert std.isString(converted) : '"appsync" expected to be of type "string"';
      {
        appsync: converted,
      }
    ),
    "#withArcregionswitch":: "Use this to override the default service endpoint URL",
    withArcregionswitch(value):: (
      local converted = value;
      assert std.isString(converted) : '"arcregionswitch" expected to be of type "string"';
      {
        arcregionswitch: converted,
      }
    ),
    "#withAthena":: "Use this to override the default service endpoint URL",
    withAthena(value):: (
      local converted = value;
      assert std.isString(converted) : '"athena" expected to be of type "string"';
      {
        athena: converted,
      }
    ),
    "#withAuditmanager":: "Use this to override the default service endpoint URL",
    withAuditmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"auditmanager" expected to be of type "string"';
      {
        auditmanager: converted,
      }
    ),
    "#withAutoscaling":: "Use this to override the default service endpoint URL",
    withAutoscaling(value):: (
      local converted = value;
      assert std.isString(converted) : '"autoscaling" expected to be of type "string"';
      {
        autoscaling: converted,
      }
    ),
    "#withAutoscalingplans":: "Use this to override the default service endpoint URL",
    withAutoscalingplans(value):: (
      local converted = value;
      assert std.isString(converted) : '"autoscalingplans" expected to be of type "string"';
      {
        autoscalingplans: converted,
      }
    ),
    "#withBackup":: "Use this to override the default service endpoint URL",
    withBackup(value):: (
      local converted = value;
      assert std.isString(converted) : '"backup" expected to be of type "string"';
      {
        backup: converted,
      }
    ),
    "#withBatch":: "Use this to override the default service endpoint URL",
    withBatch(value):: (
      local converted = value;
      assert std.isString(converted) : '"batch" expected to be of type "string"';
      {
        batch: converted,
      }
    ),
    "#withBcmdataexports":: "Use this to override the default service endpoint URL",
    withBcmdataexports(value):: (
      local converted = value;
      assert std.isString(converted) : '"bcmdataexports" expected to be of type "string"';
      {
        bcmdataexports: converted,
      }
    ),
    "#withBeanstalk":: "Use this to override the default service endpoint URL",
    withBeanstalk(value):: (
      local converted = value;
      assert std.isString(converted) : '"beanstalk" expected to be of type "string"';
      {
        beanstalk: converted,
      }
    ),
    "#withBedrock":: "Use this to override the default service endpoint URL",
    withBedrock(value):: (
      local converted = value;
      assert std.isString(converted) : '"bedrock" expected to be of type "string"';
      {
        bedrock: converted,
      }
    ),
    "#withBedrockagent":: "Use this to override the default service endpoint URL",
    withBedrockagent(value):: (
      local converted = value;
      assert std.isString(converted) : '"bedrockagent" expected to be of type "string"';
      {
        bedrockagent: converted,
      }
    ),
    "#withBedrockagentcore":: "Use this to override the default service endpoint URL",
    withBedrockagentcore(value):: (
      local converted = value;
      assert std.isString(converted) : '"bedrockagentcore" expected to be of type "string"';
      {
        bedrockagentcore: converted,
      }
    ),
    "#withBilling":: "Use this to override the default service endpoint URL",
    withBilling(value):: (
      local converted = value;
      assert std.isString(converted) : '"billing" expected to be of type "string"';
      {
        billing: converted,
      }
    ),
    "#withBudgets":: "Use this to override the default service endpoint URL",
    withBudgets(value):: (
      local converted = value;
      assert std.isString(converted) : '"budgets" expected to be of type "string"';
      {
        budgets: converted,
      }
    ),
    "#withCe":: "Use this to override the default service endpoint URL",
    withCe(value):: (
      local converted = value;
      assert std.isString(converted) : '"ce" expected to be of type "string"';
      {
        ce: converted,
      }
    ),
    "#withChatbot":: "Use this to override the default service endpoint URL",
    withChatbot(value):: (
      local converted = value;
      assert std.isString(converted) : '"chatbot" expected to be of type "string"';
      {
        chatbot: converted,
      }
    ),
    "#withChime":: "Use this to override the default service endpoint URL",
    withChime(value):: (
      local converted = value;
      assert std.isString(converted) : '"chime" expected to be of type "string"';
      {
        chime: converted,
      }
    ),
    "#withChimesdkmediapipelines":: "Use this to override the default service endpoint URL",
    withChimesdkmediapipelines(value):: (
      local converted = value;
      assert std.isString(converted) : '"chimesdkmediapipelines" expected to be of type "string"';
      {
        chimesdkmediapipelines: converted,
      }
    ),
    "#withChimesdkvoice":: "Use this to override the default service endpoint URL",
    withChimesdkvoice(value):: (
      local converted = value;
      assert std.isString(converted) : '"chimesdkvoice" expected to be of type "string"';
      {
        chimesdkvoice: converted,
      }
    ),
    "#withCleanrooms":: "Use this to override the default service endpoint URL",
    withCleanrooms(value):: (
      local converted = value;
      assert std.isString(converted) : '"cleanrooms" expected to be of type "string"';
      {
        cleanrooms: converted,
      }
    ),
    "#withCloud9":: "Use this to override the default service endpoint URL",
    withCloud9(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloud9" expected to be of type "string"';
      {
        cloud9: converted,
      }
    ),
    "#withCloudcontrol":: "Use this to override the default service endpoint URL",
    withCloudcontrol(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudcontrol" expected to be of type "string"';
      {
        cloudcontrol: converted,
      }
    ),
    "#withCloudcontrolapi":: "Use this to override the default service endpoint URL",
    withCloudcontrolapi(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudcontrolapi" expected to be of type "string"';
      {
        cloudcontrolapi: converted,
      }
    ),
    "#withCloudformation":: "Use this to override the default service endpoint URL",
    withCloudformation(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudformation" expected to be of type "string"';
      {
        cloudformation: converted,
      }
    ),
    "#withCloudfront":: "Use this to override the default service endpoint URL",
    withCloudfront(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudfront" expected to be of type "string"';
      {
        cloudfront: converted,
      }
    ),
    "#withCloudfrontkeyvaluestore":: "Use this to override the default service endpoint URL",
    withCloudfrontkeyvaluestore(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudfrontkeyvaluestore" expected to be of type "string"';
      {
        cloudfrontkeyvaluestore: converted,
      }
    ),
    "#withCloudhsm":: "Use this to override the default service endpoint URL",
    withCloudhsm(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudhsm" expected to be of type "string"';
      {
        cloudhsm: converted,
      }
    ),
    "#withCloudhsmv2":: "Use this to override the default service endpoint URL",
    withCloudhsmv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudhsmv2" expected to be of type "string"';
      {
        cloudhsmv2: converted,
      }
    ),
    "#withCloudsearch":: "Use this to override the default service endpoint URL",
    withCloudsearch(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudsearch" expected to be of type "string"';
      {
        cloudsearch: converted,
      }
    ),
    "#withCloudtrail":: "Use this to override the default service endpoint URL",
    withCloudtrail(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudtrail" expected to be of type "string"';
      {
        cloudtrail: converted,
      }
    ),
    "#withCloudwatch":: "Use this to override the default service endpoint URL",
    withCloudwatch(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatch" expected to be of type "string"';
      {
        cloudwatch: converted,
      }
    ),
    "#withCloudwatchevents":: "Use this to override the default service endpoint URL",
    withCloudwatchevents(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchevents" expected to be of type "string"';
      {
        cloudwatchevents: converted,
      }
    ),
    "#withCloudwatchevidently":: "Use this to override the default service endpoint URL",
    withCloudwatchevidently(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchevidently" expected to be of type "string"';
      {
        cloudwatchevidently: converted,
      }
    ),
    "#withCloudwatchlog":: "Use this to override the default service endpoint URL",
    withCloudwatchlog(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchlog" expected to be of type "string"';
      {
        cloudwatchlog: converted,
      }
    ),
    "#withCloudwatchlogs":: "Use this to override the default service endpoint URL",
    withCloudwatchlogs(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchlogs" expected to be of type "string"';
      {
        cloudwatchlogs: converted,
      }
    ),
    "#withCloudwatchobservabilityaccessmanager":: "Use this to override the default service endpoint URL",
    withCloudwatchobservabilityaccessmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchobservabilityaccessmanager" expected to be of type "string"';
      {
        cloudwatchobservabilityaccessmanager: converted,
      }
    ),
    "#withCloudwatchrum":: "Use this to override the default service endpoint URL",
    withCloudwatchrum(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudwatchrum" expected to be of type "string"';
      {
        cloudwatchrum: converted,
      }
    ),
    "#withCodeartifact":: "Use this to override the default service endpoint URL",
    withCodeartifact(value):: (
      local converted = value;
      assert std.isString(converted) : '"codeartifact" expected to be of type "string"';
      {
        codeartifact: converted,
      }
    ),
    "#withCodebuild":: "Use this to override the default service endpoint URL",
    withCodebuild(value):: (
      local converted = value;
      assert std.isString(converted) : '"codebuild" expected to be of type "string"';
      {
        codebuild: converted,
      }
    ),
    "#withCodecatalyst":: "Use this to override the default service endpoint URL",
    withCodecatalyst(value):: (
      local converted = value;
      assert std.isString(converted) : '"codecatalyst" expected to be of type "string"';
      {
        codecatalyst: converted,
      }
    ),
    "#withCodecommit":: "Use this to override the default service endpoint URL",
    withCodecommit(value):: (
      local converted = value;
      assert std.isString(converted) : '"codecommit" expected to be of type "string"';
      {
        codecommit: converted,
      }
    ),
    "#withCodeconnections":: "Use this to override the default service endpoint URL",
    withCodeconnections(value):: (
      local converted = value;
      assert std.isString(converted) : '"codeconnections" expected to be of type "string"';
      {
        codeconnections: converted,
      }
    ),
    "#withCodedeploy":: "Use this to override the default service endpoint URL",
    withCodedeploy(value):: (
      local converted = value;
      assert std.isString(converted) : '"codedeploy" expected to be of type "string"';
      {
        codedeploy: converted,
      }
    ),
    "#withCodeguruprofiler":: "Use this to override the default service endpoint URL",
    withCodeguruprofiler(value):: (
      local converted = value;
      assert std.isString(converted) : '"codeguruprofiler" expected to be of type "string"';
      {
        codeguruprofiler: converted,
      }
    ),
    "#withCodegurureviewer":: "Use this to override the default service endpoint URL",
    withCodegurureviewer(value):: (
      local converted = value;
      assert std.isString(converted) : '"codegurureviewer" expected to be of type "string"';
      {
        codegurureviewer: converted,
      }
    ),
    "#withCodepipeline":: "Use this to override the default service endpoint URL",
    withCodepipeline(value):: (
      local converted = value;
      assert std.isString(converted) : '"codepipeline" expected to be of type "string"';
      {
        codepipeline: converted,
      }
    ),
    "#withCodestarconnections":: "Use this to override the default service endpoint URL",
    withCodestarconnections(value):: (
      local converted = value;
      assert std.isString(converted) : '"codestarconnections" expected to be of type "string"';
      {
        codestarconnections: converted,
      }
    ),
    "#withCodestarnotifications":: "Use this to override the default service endpoint URL",
    withCodestarnotifications(value):: (
      local converted = value;
      assert std.isString(converted) : '"codestarnotifications" expected to be of type "string"';
      {
        codestarnotifications: converted,
      }
    ),
    "#withCognitoidentity":: "Use this to override the default service endpoint URL",
    withCognitoidentity(value):: (
      local converted = value;
      assert std.isString(converted) : '"cognitoidentity" expected to be of type "string"';
      {
        cognitoidentity: converted,
      }
    ),
    "#withCognitoidentityprovider":: "Use this to override the default service endpoint URL",
    withCognitoidentityprovider(value):: (
      local converted = value;
      assert std.isString(converted) : '"cognitoidentityprovider" expected to be of type "string"';
      {
        cognitoidentityprovider: converted,
      }
    ),
    "#withCognitoidp":: "Use this to override the default service endpoint URL",
    withCognitoidp(value):: (
      local converted = value;
      assert std.isString(converted) : '"cognitoidp" expected to be of type "string"';
      {
        cognitoidp: converted,
      }
    ),
    "#withComprehend":: "Use this to override the default service endpoint URL",
    withComprehend(value):: (
      local converted = value;
      assert std.isString(converted) : '"comprehend" expected to be of type "string"';
      {
        comprehend: converted,
      }
    ),
    "#withComputeoptimizer":: "Use this to override the default service endpoint URL",
    withComputeoptimizer(value):: (
      local converted = value;
      assert std.isString(converted) : '"computeoptimizer" expected to be of type "string"';
      {
        computeoptimizer: converted,
      }
    ),
    "#withConfig":: "Use this to override the default service endpoint URL",
    withConfig(value):: (
      local converted = value;
      assert std.isString(converted) : '"config" expected to be of type "string"';
      {
        config: converted,
      }
    ),
    "#withConfigservice":: "Use this to override the default service endpoint URL",
    withConfigservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"configservice" expected to be of type "string"';
      {
        configservice: converted,
      }
    ),
    "#withConnect":: "Use this to override the default service endpoint URL",
    withConnect(value):: (
      local converted = value;
      assert std.isString(converted) : '"connect" expected to be of type "string"';
      {
        connect: converted,
      }
    ),
    "#withConnectcases":: "Use this to override the default service endpoint URL",
    withConnectcases(value):: (
      local converted = value;
      assert std.isString(converted) : '"connectcases" expected to be of type "string"';
      {
        connectcases: converted,
      }
    ),
    "#withControltower":: "Use this to override the default service endpoint URL",
    withControltower(value):: (
      local converted = value;
      assert std.isString(converted) : '"controltower" expected to be of type "string"';
      {
        controltower: converted,
      }
    ),
    "#withCostandusagereportservice":: "Use this to override the default service endpoint URL",
    withCostandusagereportservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"costandusagereportservice" expected to be of type "string"';
      {
        costandusagereportservice: converted,
      }
    ),
    "#withCostexplorer":: "Use this to override the default service endpoint URL",
    withCostexplorer(value):: (
      local converted = value;
      assert std.isString(converted) : '"costexplorer" expected to be of type "string"';
      {
        costexplorer: converted,
      }
    ),
    "#withCostoptimizationhub":: "Use this to override the default service endpoint URL",
    withCostoptimizationhub(value):: (
      local converted = value;
      assert std.isString(converted) : '"costoptimizationhub" expected to be of type "string"';
      {
        costoptimizationhub: converted,
      }
    ),
    "#withCur":: "Use this to override the default service endpoint URL",
    withCur(value):: (
      local converted = value;
      assert std.isString(converted) : '"cur" expected to be of type "string"';
      {
        cur: converted,
      }
    ),
    "#withCustomerprofiles":: "Use this to override the default service endpoint URL",
    withCustomerprofiles(value):: (
      local converted = value;
      assert std.isString(converted) : '"customerprofiles" expected to be of type "string"';
      {
        customerprofiles: converted,
      }
    ),
    "#withDatabasemigration":: "Use this to override the default service endpoint URL",
    withDatabasemigration(value):: (
      local converted = value;
      assert std.isString(converted) : '"databasemigration" expected to be of type "string"';
      {
        databasemigration: converted,
      }
    ),
    "#withDatabasemigrationservice":: "Use this to override the default service endpoint URL",
    withDatabasemigrationservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"databasemigrationservice" expected to be of type "string"';
      {
        databasemigrationservice: converted,
      }
    ),
    "#withDatabrew":: "Use this to override the default service endpoint URL",
    withDatabrew(value):: (
      local converted = value;
      assert std.isString(converted) : '"databrew" expected to be of type "string"';
      {
        databrew: converted,
      }
    ),
    "#withDataexchange":: "Use this to override the default service endpoint URL",
    withDataexchange(value):: (
      local converted = value;
      assert std.isString(converted) : '"dataexchange" expected to be of type "string"';
      {
        dataexchange: converted,
      }
    ),
    "#withDatapipeline":: "Use this to override the default service endpoint URL",
    withDatapipeline(value):: (
      local converted = value;
      assert std.isString(converted) : '"datapipeline" expected to be of type "string"';
      {
        datapipeline: converted,
      }
    ),
    "#withDatasync":: "Use this to override the default service endpoint URL",
    withDatasync(value):: (
      local converted = value;
      assert std.isString(converted) : '"datasync" expected to be of type "string"';
      {
        datasync: converted,
      }
    ),
    "#withDatazone":: "Use this to override the default service endpoint URL",
    withDatazone(value):: (
      local converted = value;
      assert std.isString(converted) : '"datazone" expected to be of type "string"';
      {
        datazone: converted,
      }
    ),
    "#withDax":: "Use this to override the default service endpoint URL",
    withDax(value):: (
      local converted = value;
      assert std.isString(converted) : '"dax" expected to be of type "string"';
      {
        dax: converted,
      }
    ),
    "#withDeploy":: "Use this to override the default service endpoint URL",
    withDeploy(value):: (
      local converted = value;
      assert std.isString(converted) : '"deploy" expected to be of type "string"';
      {
        deploy: converted,
      }
    ),
    "#withDetective":: "Use this to override the default service endpoint URL",
    withDetective(value):: (
      local converted = value;
      assert std.isString(converted) : '"detective" expected to be of type "string"';
      {
        detective: converted,
      }
    ),
    "#withDevicefarm":: "Use this to override the default service endpoint URL",
    withDevicefarm(value):: (
      local converted = value;
      assert std.isString(converted) : '"devicefarm" expected to be of type "string"';
      {
        devicefarm: converted,
      }
    ),
    "#withDevopsguru":: "Use this to override the default service endpoint URL",
    withDevopsguru(value):: (
      local converted = value;
      assert std.isString(converted) : '"devopsguru" expected to be of type "string"';
      {
        devopsguru: converted,
      }
    ),
    "#withDirectconnect":: "Use this to override the default service endpoint URL",
    withDirectconnect(value):: (
      local converted = value;
      assert std.isString(converted) : '"directconnect" expected to be of type "string"';
      {
        directconnect: converted,
      }
    ),
    "#withDirectoryservice":: "Use this to override the default service endpoint URL",
    withDirectoryservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"directoryservice" expected to be of type "string"';
      {
        directoryservice: converted,
      }
    ),
    "#withDlm":: "Use this to override the default service endpoint URL",
    withDlm(value):: (
      local converted = value;
      assert std.isString(converted) : '"dlm" expected to be of type "string"';
      {
        dlm: converted,
      }
    ),
    "#withDms":: "Use this to override the default service endpoint URL",
    withDms(value):: (
      local converted = value;
      assert std.isString(converted) : '"dms" expected to be of type "string"';
      {
        dms: converted,
      }
    ),
    "#withDocdb":: "Use this to override the default service endpoint URL",
    withDocdb(value):: (
      local converted = value;
      assert std.isString(converted) : '"docdb" expected to be of type "string"';
      {
        docdb: converted,
      }
    ),
    "#withDocdbelastic":: "Use this to override the default service endpoint URL",
    withDocdbelastic(value):: (
      local converted = value;
      assert std.isString(converted) : '"docdbelastic" expected to be of type "string"';
      {
        docdbelastic: converted,
      }
    ),
    "#withDrs":: "Use this to override the default service endpoint URL",
    withDrs(value):: (
      local converted = value;
      assert std.isString(converted) : '"drs" expected to be of type "string"';
      {
        drs: converted,
      }
    ),
    "#withDs":: "Use this to override the default service endpoint URL",
    withDs(value):: (
      local converted = value;
      assert std.isString(converted) : '"ds" expected to be of type "string"';
      {
        ds: converted,
      }
    ),
    "#withDsql":: "Use this to override the default service endpoint URL",
    withDsql(value):: (
      local converted = value;
      assert std.isString(converted) : '"dsql" expected to be of type "string"';
      {
        dsql: converted,
      }
    ),
    "#withDynamodb":: "Use this to override the default service endpoint URL",
    withDynamodb(value):: (
      local converted = value;
      assert std.isString(converted) : '"dynamodb" expected to be of type "string"';
      {
        dynamodb: converted,
      }
    ),
    "#withEc2":: "Use this to override the default service endpoint URL",
    withEc2(value):: (
      local converted = value;
      assert std.isString(converted) : '"ec2" expected to be of type "string"';
      {
        ec2: converted,
      }
    ),
    "#withEcr":: "Use this to override the default service endpoint URL",
    withEcr(value):: (
      local converted = value;
      assert std.isString(converted) : '"ecr" expected to be of type "string"';
      {
        ecr: converted,
      }
    ),
    "#withEcrpublic":: "Use this to override the default service endpoint URL",
    withEcrpublic(value):: (
      local converted = value;
      assert std.isString(converted) : '"ecrpublic" expected to be of type "string"';
      {
        ecrpublic: converted,
      }
    ),
    "#withEcs":: "Use this to override the default service endpoint URL",
    withEcs(value):: (
      local converted = value;
      assert std.isString(converted) : '"ecs" expected to be of type "string"';
      {
        ecs: converted,
      }
    ),
    "#withEfs":: "Use this to override the default service endpoint URL",
    withEfs(value):: (
      local converted = value;
      assert std.isString(converted) : '"efs" expected to be of type "string"';
      {
        efs: converted,
      }
    ),
    "#withEks":: "Use this to override the default service endpoint URL",
    withEks(value):: (
      local converted = value;
      assert std.isString(converted) : '"eks" expected to be of type "string"';
      {
        eks: converted,
      }
    ),
    "#withElasticache":: "Use this to override the default service endpoint URL",
    withElasticache(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticache" expected to be of type "string"';
      {
        elasticache: converted,
      }
    ),
    "#withElasticbeanstalk":: "Use this to override the default service endpoint URL",
    withElasticbeanstalk(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticbeanstalk" expected to be of type "string"';
      {
        elasticbeanstalk: converted,
      }
    ),
    "#withElasticloadbalancing":: "Use this to override the default service endpoint URL",
    withElasticloadbalancing(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticloadbalancing" expected to be of type "string"';
      {
        elasticloadbalancing: converted,
      }
    ),
    "#withElasticloadbalancingv2":: "Use this to override the default service endpoint URL",
    withElasticloadbalancingv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticloadbalancingv2" expected to be of type "string"';
      {
        elasticloadbalancingv2: converted,
      }
    ),
    "#withElasticsearch":: "Use this to override the default service endpoint URL",
    withElasticsearch(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticsearch" expected to be of type "string"';
      {
        elasticsearch: converted,
      }
    ),
    "#withElasticsearchservice":: "Use this to override the default service endpoint URL",
    withElasticsearchservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"elasticsearchservice" expected to be of type "string"';
      {
        elasticsearchservice: converted,
      }
    ),
    "#withElastictranscoder":: "Use this to override the default service endpoint URL",
    withElastictranscoder(value):: (
      local converted = value;
      assert std.isString(converted) : '"elastictranscoder" expected to be of type "string"';
      {
        elastictranscoder: converted,
      }
    ),
    "#withElb":: "Use this to override the default service endpoint URL",
    withElb(value):: (
      local converted = value;
      assert std.isString(converted) : '"elb" expected to be of type "string"';
      {
        elb: converted,
      }
    ),
    "#withElbv2":: "Use this to override the default service endpoint URL",
    withElbv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"elbv2" expected to be of type "string"';
      {
        elbv2: converted,
      }
    ),
    "#withEmr":: "Use this to override the default service endpoint URL",
    withEmr(value):: (
      local converted = value;
      assert std.isString(converted) : '"emr" expected to be of type "string"';
      {
        emr: converted,
      }
    ),
    "#withEmrcontainers":: "Use this to override the default service endpoint URL",
    withEmrcontainers(value):: (
      local converted = value;
      assert std.isString(converted) : '"emrcontainers" expected to be of type "string"';
      {
        emrcontainers: converted,
      }
    ),
    "#withEmrserverless":: "Use this to override the default service endpoint URL",
    withEmrserverless(value):: (
      local converted = value;
      assert std.isString(converted) : '"emrserverless" expected to be of type "string"';
      {
        emrserverless: converted,
      }
    ),
    "#withEs":: "Use this to override the default service endpoint URL",
    withEs(value):: (
      local converted = value;
      assert std.isString(converted) : '"es" expected to be of type "string"';
      {
        es: converted,
      }
    ),
    "#withEventbridge":: "Use this to override the default service endpoint URL",
    withEventbridge(value):: (
      local converted = value;
      assert std.isString(converted) : '"eventbridge" expected to be of type "string"';
      {
        eventbridge: converted,
      }
    ),
    "#withEvents":: "Use this to override the default service endpoint URL",
    withEvents(value):: (
      local converted = value;
      assert std.isString(converted) : '"events" expected to be of type "string"';
      {
        events: converted,
      }
    ),
    "#withEvidently":: "Use this to override the default service endpoint URL",
    withEvidently(value):: (
      local converted = value;
      assert std.isString(converted) : '"evidently" expected to be of type "string"';
      {
        evidently: converted,
      }
    ),
    "#withEvs":: "Use this to override the default service endpoint URL",
    withEvs(value):: (
      local converted = value;
      assert std.isString(converted) : '"evs" expected to be of type "string"';
      {
        evs: converted,
      }
    ),
    "#withFinspace":: "Use this to override the default service endpoint URL",
    withFinspace(value):: (
      local converted = value;
      assert std.isString(converted) : '"finspace" expected to be of type "string"';
      {
        finspace: converted,
      }
    ),
    "#withFirehose":: "Use this to override the default service endpoint URL",
    withFirehose(value):: (
      local converted = value;
      assert std.isString(converted) : '"firehose" expected to be of type "string"';
      {
        firehose: converted,
      }
    ),
    "#withFis":: "Use this to override the default service endpoint URL",
    withFis(value):: (
      local converted = value;
      assert std.isString(converted) : '"fis" expected to be of type "string"';
      {
        fis: converted,
      }
    ),
    "#withFms":: "Use this to override the default service endpoint URL",
    withFms(value):: (
      local converted = value;
      assert std.isString(converted) : '"fms" expected to be of type "string"';
      {
        fms: converted,
      }
    ),
    "#withFsx":: "Use this to override the default service endpoint URL",
    withFsx(value):: (
      local converted = value;
      assert std.isString(converted) : '"fsx" expected to be of type "string"';
      {
        fsx: converted,
      }
    ),
    "#withGamelift":: "Use this to override the default service endpoint URL",
    withGamelift(value):: (
      local converted = value;
      assert std.isString(converted) : '"gamelift" expected to be of type "string"';
      {
        gamelift: converted,
      }
    ),
    "#withGlacier":: "Use this to override the default service endpoint URL",
    withGlacier(value):: (
      local converted = value;
      assert std.isString(converted) : '"glacier" expected to be of type "string"';
      {
        glacier: converted,
      }
    ),
    "#withGlobalaccelerator":: "Use this to override the default service endpoint URL",
    withGlobalaccelerator(value):: (
      local converted = value;
      assert std.isString(converted) : '"globalaccelerator" expected to be of type "string"';
      {
        globalaccelerator: converted,
      }
    ),
    "#withGlue":: "Use this to override the default service endpoint URL",
    withGlue(value):: (
      local converted = value;
      assert std.isString(converted) : '"glue" expected to be of type "string"';
      {
        glue: converted,
      }
    ),
    "#withGluedatabrew":: "Use this to override the default service endpoint URL",
    withGluedatabrew(value):: (
      local converted = value;
      assert std.isString(converted) : '"gluedatabrew" expected to be of type "string"';
      {
        gluedatabrew: converted,
      }
    ),
    "#withGrafana":: "Use this to override the default service endpoint URL",
    withGrafana(value):: (
      local converted = value;
      assert std.isString(converted) : '"grafana" expected to be of type "string"';
      {
        grafana: converted,
      }
    ),
    "#withGreengrass":: "Use this to override the default service endpoint URL",
    withGreengrass(value):: (
      local converted = value;
      assert std.isString(converted) : '"greengrass" expected to be of type "string"';
      {
        greengrass: converted,
      }
    ),
    "#withGroundstation":: "Use this to override the default service endpoint URL",
    withGroundstation(value):: (
      local converted = value;
      assert std.isString(converted) : '"groundstation" expected to be of type "string"';
      {
        groundstation: converted,
      }
    ),
    "#withGuardduty":: "Use this to override the default service endpoint URL",
    withGuardduty(value):: (
      local converted = value;
      assert std.isString(converted) : '"guardduty" expected to be of type "string"';
      {
        guardduty: converted,
      }
    ),
    "#withHealthlake":: "Use this to override the default service endpoint URL",
    withHealthlake(value):: (
      local converted = value;
      assert std.isString(converted) : '"healthlake" expected to be of type "string"';
      {
        healthlake: converted,
      }
    ),
    "#withIam":: "Use this to override the default service endpoint URL",
    withIam(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam" expected to be of type "string"';
      {
        iam: converted,
      }
    ),
    "#withIdentitystore":: "Use this to override the default service endpoint URL",
    withIdentitystore(value):: (
      local converted = value;
      assert std.isString(converted) : '"identitystore" expected to be of type "string"';
      {
        identitystore: converted,
      }
    ),
    "#withImagebuilder":: "Use this to override the default service endpoint URL",
    withImagebuilder(value):: (
      local converted = value;
      assert std.isString(converted) : '"imagebuilder" expected to be of type "string"';
      {
        imagebuilder: converted,
      }
    ),
    "#withInspector":: "Use this to override the default service endpoint URL",
    withInspector(value):: (
      local converted = value;
      assert std.isString(converted) : '"inspector" expected to be of type "string"';
      {
        inspector: converted,
      }
    ),
    "#withInspector2":: "Use this to override the default service endpoint URL",
    withInspector2(value):: (
      local converted = value;
      assert std.isString(converted) : '"inspector2" expected to be of type "string"';
      {
        inspector2: converted,
      }
    ),
    "#withInspectorv2":: "Use this to override the default service endpoint URL",
    withInspectorv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"inspectorv2" expected to be of type "string"';
      {
        inspectorv2: converted,
      }
    ),
    "#withInternetmonitor":: "Use this to override the default service endpoint URL",
    withInternetmonitor(value):: (
      local converted = value;
      assert std.isString(converted) : '"internetmonitor" expected to be of type "string"';
      {
        internetmonitor: converted,
      }
    ),
    "#withInvoicing":: "Use this to override the default service endpoint URL",
    withInvoicing(value):: (
      local converted = value;
      assert std.isString(converted) : '"invoicing" expected to be of type "string"';
      {
        invoicing: converted,
      }
    ),
    "#withIot":: "Use this to override the default service endpoint URL",
    withIot(value):: (
      local converted = value;
      assert std.isString(converted) : '"iot" expected to be of type "string"';
      {
        iot: converted,
      }
    ),
    "#withIvs":: "Use this to override the default service endpoint URL",
    withIvs(value):: (
      local converted = value;
      assert std.isString(converted) : '"ivs" expected to be of type "string"';
      {
        ivs: converted,
      }
    ),
    "#withIvschat":: "Use this to override the default service endpoint URL",
    withIvschat(value):: (
      local converted = value;
      assert std.isString(converted) : '"ivschat" expected to be of type "string"';
      {
        ivschat: converted,
      }
    ),
    "#withKafka":: "Use this to override the default service endpoint URL",
    withKafka(value):: (
      local converted = value;
      assert std.isString(converted) : '"kafka" expected to be of type "string"';
      {
        kafka: converted,
      }
    ),
    "#withKafkaconnect":: "Use this to override the default service endpoint URL",
    withKafkaconnect(value):: (
      local converted = value;
      assert std.isString(converted) : '"kafkaconnect" expected to be of type "string"';
      {
        kafkaconnect: converted,
      }
    ),
    "#withKendra":: "Use this to override the default service endpoint URL",
    withKendra(value):: (
      local converted = value;
      assert std.isString(converted) : '"kendra" expected to be of type "string"';
      {
        kendra: converted,
      }
    ),
    "#withKeyspaces":: "Use this to override the default service endpoint URL",
    withKeyspaces(value):: (
      local converted = value;
      assert std.isString(converted) : '"keyspaces" expected to be of type "string"';
      {
        keyspaces: converted,
      }
    ),
    "#withKinesis":: "Use this to override the default service endpoint URL",
    withKinesis(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesis" expected to be of type "string"';
      {
        kinesis: converted,
      }
    ),
    "#withKinesisanalytics":: "Use this to override the default service endpoint URL",
    withKinesisanalytics(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesisanalytics" expected to be of type "string"';
      {
        kinesisanalytics: converted,
      }
    ),
    "#withKinesisanalyticsv2":: "Use this to override the default service endpoint URL",
    withKinesisanalyticsv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesisanalyticsv2" expected to be of type "string"';
      {
        kinesisanalyticsv2: converted,
      }
    ),
    "#withKinesisvideo":: "Use this to override the default service endpoint URL",
    withKinesisvideo(value):: (
      local converted = value;
      assert std.isString(converted) : '"kinesisvideo" expected to be of type "string"';
      {
        kinesisvideo: converted,
      }
    ),
    "#withKms":: "Use this to override the default service endpoint URL",
    withKms(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms" expected to be of type "string"';
      {
        kms: converted,
      }
    ),
    "#withLakeformation":: "Use this to override the default service endpoint URL",
    withLakeformation(value):: (
      local converted = value;
      assert std.isString(converted) : '"lakeformation" expected to be of type "string"';
      {
        lakeformation: converted,
      }
    ),
    "#withLambda":: "Use this to override the default service endpoint URL",
    withLambda(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda" expected to be of type "string"';
      {
        lambda: converted,
      }
    ),
    "#withLaunchwizard":: "Use this to override the default service endpoint URL",
    withLaunchwizard(value):: (
      local converted = value;
      assert std.isString(converted) : '"launchwizard" expected to be of type "string"';
      {
        launchwizard: converted,
      }
    ),
    "#withLex":: "Use this to override the default service endpoint URL",
    withLex(value):: (
      local converted = value;
      assert std.isString(converted) : '"lex" expected to be of type "string"';
      {
        lex: converted,
      }
    ),
    "#withLexmodelbuilding":: "Use this to override the default service endpoint URL",
    withLexmodelbuilding(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodelbuilding" expected to be of type "string"';
      {
        lexmodelbuilding: converted,
      }
    ),
    "#withLexmodelbuildingservice":: "Use this to override the default service endpoint URL",
    withLexmodelbuildingservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodelbuildingservice" expected to be of type "string"';
      {
        lexmodelbuildingservice: converted,
      }
    ),
    "#withLexmodels":: "Use this to override the default service endpoint URL",
    withLexmodels(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodels" expected to be of type "string"';
      {
        lexmodels: converted,
      }
    ),
    "#withLexmodelsv2":: "Use this to override the default service endpoint URL",
    withLexmodelsv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexmodelsv2" expected to be of type "string"';
      {
        lexmodelsv2: converted,
      }
    ),
    "#withLexv2models":: "Use this to override the default service endpoint URL",
    withLexv2models(value):: (
      local converted = value;
      assert std.isString(converted) : '"lexv2models" expected to be of type "string"';
      {
        lexv2models: converted,
      }
    ),
    "#withLicensemanager":: "Use this to override the default service endpoint URL",
    withLicensemanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"licensemanager" expected to be of type "string"';
      {
        licensemanager: converted,
      }
    ),
    "#withLightsail":: "Use this to override the default service endpoint URL",
    withLightsail(value):: (
      local converted = value;
      assert std.isString(converted) : '"lightsail" expected to be of type "string"';
      {
        lightsail: converted,
      }
    ),
    "#withLocation":: "Use this to override the default service endpoint URL",
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    "#withLocationservice":: "Use this to override the default service endpoint URL",
    withLocationservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"locationservice" expected to be of type "string"';
      {
        locationservice: converted,
      }
    ),
    "#withLogs":: "Use this to override the default service endpoint URL",
    withLogs(value):: (
      local converted = value;
      assert std.isString(converted) : '"logs" expected to be of type "string"';
      {
        logs: converted,
      }
    ),
    "#withLookoutmetrics":: "Use this to override the default service endpoint URL",
    withLookoutmetrics(value):: (
      local converted = value;
      assert std.isString(converted) : '"lookoutmetrics" expected to be of type "string"';
      {
        lookoutmetrics: converted,
      }
    ),
    "#withM2":: "Use this to override the default service endpoint URL",
    withM2(value):: (
      local converted = value;
      assert std.isString(converted) : '"m2" expected to be of type "string"';
      {
        m2: converted,
      }
    ),
    "#withMacie2":: "Use this to override the default service endpoint URL",
    withMacie2(value):: (
      local converted = value;
      assert std.isString(converted) : '"macie2" expected to be of type "string"';
      {
        macie2: converted,
      }
    ),
    "#withManagedgrafana":: "Use this to override the default service endpoint URL",
    withManagedgrafana(value):: (
      local converted = value;
      assert std.isString(converted) : '"managedgrafana" expected to be of type "string"';
      {
        managedgrafana: converted,
      }
    ),
    "#withMediaconnect":: "Use this to override the default service endpoint URL",
    withMediaconnect(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediaconnect" expected to be of type "string"';
      {
        mediaconnect: converted,
      }
    ),
    "#withMediaconvert":: "Use this to override the default service endpoint URL",
    withMediaconvert(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediaconvert" expected to be of type "string"';
      {
        mediaconvert: converted,
      }
    ),
    "#withMedialive":: "Use this to override the default service endpoint URL",
    withMedialive(value):: (
      local converted = value;
      assert std.isString(converted) : '"medialive" expected to be of type "string"';
      {
        medialive: converted,
      }
    ),
    "#withMediapackage":: "Use this to override the default service endpoint URL",
    withMediapackage(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediapackage" expected to be of type "string"';
      {
        mediapackage: converted,
      }
    ),
    "#withMediapackagev2":: "Use this to override the default service endpoint URL",
    withMediapackagev2(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediapackagev2" expected to be of type "string"';
      {
        mediapackagev2: converted,
      }
    ),
    "#withMediapackagevod":: "Use this to override the default service endpoint URL",
    withMediapackagevod(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediapackagevod" expected to be of type "string"';
      {
        mediapackagevod: converted,
      }
    ),
    "#withMediastore":: "Use this to override the default service endpoint URL",
    withMediastore(value):: (
      local converted = value;
      assert std.isString(converted) : '"mediastore" expected to be of type "string"';
      {
        mediastore: converted,
      }
    ),
    "#withMemorydb":: "Use this to override the default service endpoint URL",
    withMemorydb(value):: (
      local converted = value;
      assert std.isString(converted) : '"memorydb" expected to be of type "string"';
      {
        memorydb: converted,
      }
    ),
    "#withMgn":: "Use this to override the default service endpoint URL",
    withMgn(value):: (
      local converted = value;
      assert std.isString(converted) : '"mgn" expected to be of type "string"';
      {
        mgn: converted,
      }
    ),
    "#withMq":: "Use this to override the default service endpoint URL",
    withMq(value):: (
      local converted = value;
      assert std.isString(converted) : '"mq" expected to be of type "string"';
      {
        mq: converted,
      }
    ),
    "#withMsk":: "Use this to override the default service endpoint URL",
    withMsk(value):: (
      local converted = value;
      assert std.isString(converted) : '"msk" expected to be of type "string"';
      {
        msk: converted,
      }
    ),
    "#withMwaa":: "Use this to override the default service endpoint URL",
    withMwaa(value):: (
      local converted = value;
      assert std.isString(converted) : '"mwaa" expected to be of type "string"';
      {
        mwaa: converted,
      }
    ),
    "#withNeptune":: "Use this to override the default service endpoint URL",
    withNeptune(value):: (
      local converted = value;
      assert std.isString(converted) : '"neptune" expected to be of type "string"';
      {
        neptune: converted,
      }
    ),
    "#withNeptunegraph":: "Use this to override the default service endpoint URL",
    withNeptunegraph(value):: (
      local converted = value;
      assert std.isString(converted) : '"neptunegraph" expected to be of type "string"';
      {
        neptunegraph: converted,
      }
    ),
    "#withNetworkfirewall":: "Use this to override the default service endpoint URL",
    withNetworkfirewall(value):: (
      local converted = value;
      assert std.isString(converted) : '"networkfirewall" expected to be of type "string"';
      {
        networkfirewall: converted,
      }
    ),
    "#withNetworkmanager":: "Use this to override the default service endpoint URL",
    withNetworkmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"networkmanager" expected to be of type "string"';
      {
        networkmanager: converted,
      }
    ),
    "#withNetworkmonitor":: "Use this to override the default service endpoint URL",
    withNetworkmonitor(value):: (
      local converted = value;
      assert std.isString(converted) : '"networkmonitor" expected to be of type "string"';
      {
        networkmonitor: converted,
      }
    ),
    "#withNotifications":: "Use this to override the default service endpoint URL",
    withNotifications(value):: (
      local converted = value;
      assert std.isString(converted) : '"notifications" expected to be of type "string"';
      {
        notifications: converted,
      }
    ),
    "#withNotificationscontacts":: "Use this to override the default service endpoint URL",
    withNotificationscontacts(value):: (
      local converted = value;
      assert std.isString(converted) : '"notificationscontacts" expected to be of type "string"';
      {
        notificationscontacts: converted,
      }
    ),
    "#withOam":: "Use this to override the default service endpoint URL",
    withOam(value):: (
      local converted = value;
      assert std.isString(converted) : '"oam" expected to be of type "string"';
      {
        oam: converted,
      }
    ),
    "#withOdb":: "Use this to override the default service endpoint URL",
    withOdb(value):: (
      local converted = value;
      assert std.isString(converted) : '"odb" expected to be of type "string"';
      {
        odb: converted,
      }
    ),
    "#withOpensearch":: "Use this to override the default service endpoint URL",
    withOpensearch(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearch" expected to be of type "string"';
      {
        opensearch: converted,
      }
    ),
    "#withOpensearchingestion":: "Use this to override the default service endpoint URL",
    withOpensearchingestion(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearchingestion" expected to be of type "string"';
      {
        opensearchingestion: converted,
      }
    ),
    "#withOpensearchserverless":: "Use this to override the default service endpoint URL",
    withOpensearchserverless(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearchserverless" expected to be of type "string"';
      {
        opensearchserverless: converted,
      }
    ),
    "#withOpensearchservice":: "Use this to override the default service endpoint URL",
    withOpensearchservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"opensearchservice" expected to be of type "string"';
      {
        opensearchservice: converted,
      }
    ),
    "#withOrganizations":: "Use this to override the default service endpoint URL",
    withOrganizations(value):: (
      local converted = value;
      assert std.isString(converted) : '"organizations" expected to be of type "string"';
      {
        organizations: converted,
      }
    ),
    "#withOsis":: "Use this to override the default service endpoint URL",
    withOsis(value):: (
      local converted = value;
      assert std.isString(converted) : '"osis" expected to be of type "string"';
      {
        osis: converted,
      }
    ),
    "#withOutposts":: "Use this to override the default service endpoint URL",
    withOutposts(value):: (
      local converted = value;
      assert std.isString(converted) : '"outposts" expected to be of type "string"';
      {
        outposts: converted,
      }
    ),
    "#withPaymentcryptography":: "Use this to override the default service endpoint URL",
    withPaymentcryptography(value):: (
      local converted = value;
      assert std.isString(converted) : '"paymentcryptography" expected to be of type "string"';
      {
        paymentcryptography: converted,
      }
    ),
    "#withPcaconnectorad":: "Use this to override the default service endpoint URL",
    withPcaconnectorad(value):: (
      local converted = value;
      assert std.isString(converted) : '"pcaconnectorad" expected to be of type "string"';
      {
        pcaconnectorad: converted,
      }
    ),
    "#withPcs":: "Use this to override the default service endpoint URL",
    withPcs(value):: (
      local converted = value;
      assert std.isString(converted) : '"pcs" expected to be of type "string"';
      {
        pcs: converted,
      }
    ),
    "#withPinpoint":: "Use this to override the default service endpoint URL",
    withPinpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"pinpoint" expected to be of type "string"';
      {
        pinpoint: converted,
      }
    ),
    "#withPinpointsmsvoicev2":: "Use this to override the default service endpoint URL",
    withPinpointsmsvoicev2(value):: (
      local converted = value;
      assert std.isString(converted) : '"pinpointsmsvoicev2" expected to be of type "string"';
      {
        pinpointsmsvoicev2: converted,
      }
    ),
    "#withPipes":: "Use this to override the default service endpoint URL",
    withPipes(value):: (
      local converted = value;
      assert std.isString(converted) : '"pipes" expected to be of type "string"';
      {
        pipes: converted,
      }
    ),
    "#withPolly":: "Use this to override the default service endpoint URL",
    withPolly(value):: (
      local converted = value;
      assert std.isString(converted) : '"polly" expected to be of type "string"';
      {
        polly: converted,
      }
    ),
    "#withPricing":: "Use this to override the default service endpoint URL",
    withPricing(value):: (
      local converted = value;
      assert std.isString(converted) : '"pricing" expected to be of type "string"';
      {
        pricing: converted,
      }
    ),
    "#withPrometheus":: "Use this to override the default service endpoint URL",
    withPrometheus(value):: (
      local converted = value;
      assert std.isString(converted) : '"prometheus" expected to be of type "string"';
      {
        prometheus: converted,
      }
    ),
    "#withPrometheusservice":: "Use this to override the default service endpoint URL",
    withPrometheusservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"prometheusservice" expected to be of type "string"';
      {
        prometheusservice: converted,
      }
    ),
    "#withQbusiness":: "Use this to override the default service endpoint URL",
    withQbusiness(value):: (
      local converted = value;
      assert std.isString(converted) : '"qbusiness" expected to be of type "string"';
      {
        qbusiness: converted,
      }
    ),
    "#withQldb":: "Use this to override the default service endpoint URL",
    withQldb(value):: (
      local converted = value;
      assert std.isString(converted) : '"qldb" expected to be of type "string"';
      {
        qldb: converted,
      }
    ),
    "#withQuicksight":: "Use this to override the default service endpoint URL",
    withQuicksight(value):: (
      local converted = value;
      assert std.isString(converted) : '"quicksight" expected to be of type "string"';
      {
        quicksight: converted,
      }
    ),
    "#withRam":: "Use this to override the default service endpoint URL",
    withRam(value):: (
      local converted = value;
      assert std.isString(converted) : '"ram" expected to be of type "string"';
      {
        ram: converted,
      }
    ),
    "#withRbin":: "Use this to override the default service endpoint URL",
    withRbin(value):: (
      local converted = value;
      assert std.isString(converted) : '"rbin" expected to be of type "string"';
      {
        rbin: converted,
      }
    ),
    "#withRds":: "Use this to override the default service endpoint URL",
    withRds(value):: (
      local converted = value;
      assert std.isString(converted) : '"rds" expected to be of type "string"';
      {
        rds: converted,
      }
    ),
    "#withRecyclebin":: "Use this to override the default service endpoint URL",
    withRecyclebin(value):: (
      local converted = value;
      assert std.isString(converted) : '"recyclebin" expected to be of type "string"';
      {
        recyclebin: converted,
      }
    ),
    "#withRedshift":: "Use this to override the default service endpoint URL",
    withRedshift(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshift" expected to be of type "string"';
      {
        redshift: converted,
      }
    ),
    "#withRedshiftdata":: "Use this to override the default service endpoint URL",
    withRedshiftdata(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshiftdata" expected to be of type "string"';
      {
        redshiftdata: converted,
      }
    ),
    "#withRedshiftdataapiservice":: "Use this to override the default service endpoint URL",
    withRedshiftdataapiservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshiftdataapiservice" expected to be of type "string"';
      {
        redshiftdataapiservice: converted,
      }
    ),
    "#withRedshiftserverless":: "Use this to override the default service endpoint URL",
    withRedshiftserverless(value):: (
      local converted = value;
      assert std.isString(converted) : '"redshiftserverless" expected to be of type "string"';
      {
        redshiftserverless: converted,
      }
    ),
    "#withRekognition":: "Use this to override the default service endpoint URL",
    withRekognition(value):: (
      local converted = value;
      assert std.isString(converted) : '"rekognition" expected to be of type "string"';
      {
        rekognition: converted,
      }
    ),
    "#withResiliencehub":: "Use this to override the default service endpoint URL",
    withResiliencehub(value):: (
      local converted = value;
      assert std.isString(converted) : '"resiliencehub" expected to be of type "string"';
      {
        resiliencehub: converted,
      }
    ),
    "#withResourceexplorer2":: "Use this to override the default service endpoint URL",
    withResourceexplorer2(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourceexplorer2" expected to be of type "string"';
      {
        resourceexplorer2: converted,
      }
    ),
    "#withResourcegroups":: "Use this to override the default service endpoint URL",
    withResourcegroups(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourcegroups" expected to be of type "string"';
      {
        resourcegroups: converted,
      }
    ),
    "#withResourcegroupstagging":: "Use this to override the default service endpoint URL",
    withResourcegroupstagging(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourcegroupstagging" expected to be of type "string"';
      {
        resourcegroupstagging: converted,
      }
    ),
    "#withResourcegroupstaggingapi":: "Use this to override the default service endpoint URL",
    withResourcegroupstaggingapi(value):: (
      local converted = value;
      assert std.isString(converted) : '"resourcegroupstaggingapi" expected to be of type "string"';
      {
        resourcegroupstaggingapi: converted,
      }
    ),
    "#withRolesanywhere":: "Use this to override the default service endpoint URL",
    withRolesanywhere(value):: (
      local converted = value;
      assert std.isString(converted) : '"rolesanywhere" expected to be of type "string"';
      {
        rolesanywhere: converted,
      }
    ),
    "#withRoute53":: "Use this to override the default service endpoint URL",
    withRoute53(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53" expected to be of type "string"';
      {
        route53: converted,
      }
    ),
    "#withRoute53domains":: "Use this to override the default service endpoint URL",
    withRoute53domains(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53domains" expected to be of type "string"';
      {
        route53domains: converted,
      }
    ),
    "#withRoute53profiles":: "Use this to override the default service endpoint URL",
    withRoute53profiles(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53profiles" expected to be of type "string"';
      {
        route53profiles: converted,
      }
    ),
    "#withRoute53recoverycontrolconfig":: "Use this to override the default service endpoint URL",
    withRoute53recoverycontrolconfig(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53recoverycontrolconfig" expected to be of type "string"';
      {
        route53recoverycontrolconfig: converted,
      }
    ),
    "#withRoute53recoveryreadiness":: "Use this to override the default service endpoint URL",
    withRoute53recoveryreadiness(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53recoveryreadiness" expected to be of type "string"';
      {
        route53recoveryreadiness: converted,
      }
    ),
    "#withRoute53resolver":: "Use this to override the default service endpoint URL",
    withRoute53resolver(value):: (
      local converted = value;
      assert std.isString(converted) : '"route53resolver" expected to be of type "string"';
      {
        route53resolver: converted,
      }
    ),
    "#withRum":: "Use this to override the default service endpoint URL",
    withRum(value):: (
      local converted = value;
      assert std.isString(converted) : '"rum" expected to be of type "string"';
      {
        rum: converted,
      }
    ),
    "#withS3":: "Use this to override the default service endpoint URL",
    withS3(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3" expected to be of type "string"';
      {
        s3: converted,
      }
    ),
    "#withS3api":: "Use this to override the default service endpoint URL",
    withS3api(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3api" expected to be of type "string"';
      {
        s3api: converted,
      }
    ),
    "#withS3control":: "Use this to override the default service endpoint URL",
    withS3control(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3control" expected to be of type "string"';
      {
        s3control: converted,
      }
    ),
    "#withS3outposts":: "Use this to override the default service endpoint URL",
    withS3outposts(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3outposts" expected to be of type "string"';
      {
        s3outposts: converted,
      }
    ),
    "#withS3tables":: "Use this to override the default service endpoint URL",
    withS3tables(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3tables" expected to be of type "string"';
      {
        s3tables: converted,
      }
    ),
    "#withS3vectors":: "Use this to override the default service endpoint URL",
    withS3vectors(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3vectors" expected to be of type "string"';
      {
        s3vectors: converted,
      }
    ),
    "#withSagemaker":: "Use this to override the default service endpoint URL",
    withSagemaker(value):: (
      local converted = value;
      assert std.isString(converted) : '"sagemaker" expected to be of type "string"';
      {
        sagemaker: converted,
      }
    ),
    "#withScheduler":: "Use this to override the default service endpoint URL",
    withScheduler(value):: (
      local converted = value;
      assert std.isString(converted) : '"scheduler" expected to be of type "string"';
      {
        scheduler: converted,
      }
    ),
    "#withSchemas":: "Use this to override the default service endpoint URL",
    withSchemas(value):: (
      local converted = value;
      assert std.isString(converted) : '"schemas" expected to be of type "string"';
      {
        schemas: converted,
      }
    ),
    "#withSecretsmanager":: "Use this to override the default service endpoint URL",
    withSecretsmanager(value):: (
      local converted = value;
      assert std.isString(converted) : '"secretsmanager" expected to be of type "string"';
      {
        secretsmanager: converted,
      }
    ),
    "#withSecurityhub":: "Use this to override the default service endpoint URL",
    withSecurityhub(value):: (
      local converted = value;
      assert std.isString(converted) : '"securityhub" expected to be of type "string"';
      {
        securityhub: converted,
      }
    ),
    "#withSecuritylake":: "Use this to override the default service endpoint URL",
    withSecuritylake(value):: (
      local converted = value;
      assert std.isString(converted) : '"securitylake" expected to be of type "string"';
      {
        securitylake: converted,
      }
    ),
    "#withServerlessapplicationrepository":: "Use this to override the default service endpoint URL",
    withServerlessapplicationrepository(value):: (
      local converted = value;
      assert std.isString(converted) : '"serverlessapplicationrepository" expected to be of type "string"';
      {
        serverlessapplicationrepository: converted,
      }
    ),
    "#withServerlessapprepo":: "Use this to override the default service endpoint URL",
    withServerlessapprepo(value):: (
      local converted = value;
      assert std.isString(converted) : '"serverlessapprepo" expected to be of type "string"';
      {
        serverlessapprepo: converted,
      }
    ),
    "#withServerlessrepo":: "Use this to override the default service endpoint URL",
    withServerlessrepo(value):: (
      local converted = value;
      assert std.isString(converted) : '"serverlessrepo" expected to be of type "string"';
      {
        serverlessrepo: converted,
      }
    ),
    "#withServicecatalog":: "Use this to override the default service endpoint URL",
    withServicecatalog(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicecatalog" expected to be of type "string"';
      {
        servicecatalog: converted,
      }
    ),
    "#withServicecatalogappregistry":: "Use this to override the default service endpoint URL",
    withServicecatalogappregistry(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicecatalogappregistry" expected to be of type "string"';
      {
        servicecatalogappregistry: converted,
      }
    ),
    "#withServicediscovery":: "Use this to override the default service endpoint URL",
    withServicediscovery(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicediscovery" expected to be of type "string"';
      {
        servicediscovery: converted,
      }
    ),
    "#withServicequotas":: "Use this to override the default service endpoint URL",
    withServicequotas(value):: (
      local converted = value;
      assert std.isString(converted) : '"servicequotas" expected to be of type "string"';
      {
        servicequotas: converted,
      }
    ),
    "#withSes":: "Use this to override the default service endpoint URL",
    withSes(value):: (
      local converted = value;
      assert std.isString(converted) : '"ses" expected to be of type "string"';
      {
        ses: converted,
      }
    ),
    "#withSesv2":: "Use this to override the default service endpoint URL",
    withSesv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"sesv2" expected to be of type "string"';
      {
        sesv2: converted,
      }
    ),
    "#withSfn":: "Use this to override the default service endpoint URL",
    withSfn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sfn" expected to be of type "string"';
      {
        sfn: converted,
      }
    ),
    "#withShield":: "Use this to override the default service endpoint URL",
    withShield(value):: (
      local converted = value;
      assert std.isString(converted) : '"shield" expected to be of type "string"';
      {
        shield: converted,
      }
    ),
    "#withSigner":: "Use this to override the default service endpoint URL",
    withSigner(value):: (
      local converted = value;
      assert std.isString(converted) : '"signer" expected to be of type "string"';
      {
        signer: converted,
      }
    ),
    "#withSns":: "Use this to override the default service endpoint URL",
    withSns(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns" expected to be of type "string"';
      {
        sns: converted,
      }
    ),
    "#withSqs":: "Use this to override the default service endpoint URL",
    withSqs(value):: (
      local converted = value;
      assert std.isString(converted) : '"sqs" expected to be of type "string"';
      {
        sqs: converted,
      }
    ),
    "#withSsm":: "Use this to override the default service endpoint URL",
    withSsm(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssm" expected to be of type "string"';
      {
        ssm: converted,
      }
    ),
    "#withSsmcontacts":: "Use this to override the default service endpoint URL",
    withSsmcontacts(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmcontacts" expected to be of type "string"';
      {
        ssmcontacts: converted,
      }
    ),
    "#withSsmincidents":: "Use this to override the default service endpoint URL",
    withSsmincidents(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmincidents" expected to be of type "string"';
      {
        ssmincidents: converted,
      }
    ),
    "#withSsmquicksetup":: "Use this to override the default service endpoint URL",
    withSsmquicksetup(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmquicksetup" expected to be of type "string"';
      {
        ssmquicksetup: converted,
      }
    ),
    "#withSsmsap":: "Use this to override the default service endpoint URL",
    withSsmsap(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssmsap" expected to be of type "string"';
      {
        ssmsap: converted,
      }
    ),
    "#withSso":: "Use this to override the default service endpoint URL",
    withSso(value):: (
      local converted = value;
      assert std.isString(converted) : '"sso" expected to be of type "string"';
      {
        sso: converted,
      }
    ),
    "#withSsoadmin":: "Use this to override the default service endpoint URL",
    withSsoadmin(value):: (
      local converted = value;
      assert std.isString(converted) : '"ssoadmin" expected to be of type "string"';
      {
        ssoadmin: converted,
      }
    ),
    "#withStepfunctions":: "Use this to override the default service endpoint URL",
    withStepfunctions(value):: (
      local converted = value;
      assert std.isString(converted) : '"stepfunctions" expected to be of type "string"';
      {
        stepfunctions: converted,
      }
    ),
    "#withStoragegateway":: "Use this to override the default service endpoint URL",
    withStoragegateway(value):: (
      local converted = value;
      assert std.isString(converted) : '"storagegateway" expected to be of type "string"';
      {
        storagegateway: converted,
      }
    ),
    "#withSts":: "Use this to override the default service endpoint URL",
    withSts(value):: (
      local converted = value;
      assert std.isString(converted) : '"sts" expected to be of type "string"';
      {
        sts: converted,
      }
    ),
    "#withSwf":: "Use this to override the default service endpoint URL",
    withSwf(value):: (
      local converted = value;
      assert std.isString(converted) : '"swf" expected to be of type "string"';
      {
        swf: converted,
      }
    ),
    "#withSynthetics":: "Use this to override the default service endpoint URL",
    withSynthetics(value):: (
      local converted = value;
      assert std.isString(converted) : '"synthetics" expected to be of type "string"';
      {
        synthetics: converted,
      }
    ),
    "#withTaxsettings":: "Use this to override the default service endpoint URL",
    withTaxsettings(value):: (
      local converted = value;
      assert std.isString(converted) : '"taxsettings" expected to be of type "string"';
      {
        taxsettings: converted,
      }
    ),
    "#withTimestreaminfluxdb":: "Use this to override the default service endpoint URL",
    withTimestreaminfluxdb(value):: (
      local converted = value;
      assert std.isString(converted) : '"timestreaminfluxdb" expected to be of type "string"';
      {
        timestreaminfluxdb: converted,
      }
    ),
    "#withTimestreamquery":: "Use this to override the default service endpoint URL",
    withTimestreamquery(value):: (
      local converted = value;
      assert std.isString(converted) : '"timestreamquery" expected to be of type "string"';
      {
        timestreamquery: converted,
      }
    ),
    "#withTimestreamwrite":: "Use this to override the default service endpoint URL",
    withTimestreamwrite(value):: (
      local converted = value;
      assert std.isString(converted) : '"timestreamwrite" expected to be of type "string"';
      {
        timestreamwrite: converted,
      }
    ),
    "#withTranscribe":: "Use this to override the default service endpoint URL",
    withTranscribe(value):: (
      local converted = value;
      assert std.isString(converted) : '"transcribe" expected to be of type "string"';
      {
        transcribe: converted,
      }
    ),
    "#withTranscribeservice":: "Use this to override the default service endpoint URL",
    withTranscribeservice(value):: (
      local converted = value;
      assert std.isString(converted) : '"transcribeservice" expected to be of type "string"';
      {
        transcribeservice: converted,
      }
    ),
    "#withTransfer":: "Use this to override the default service endpoint URL",
    withTransfer(value):: (
      local converted = value;
      assert std.isString(converted) : '"transfer" expected to be of type "string"';
      {
        transfer: converted,
      }
    ),
    "#withVerifiedpermissions":: "Use this to override the default service endpoint URL",
    withVerifiedpermissions(value):: (
      local converted = value;
      assert std.isString(converted) : '"verifiedpermissions" expected to be of type "string"';
      {
        verifiedpermissions: converted,
      }
    ),
    "#withVpclattice":: "Use this to override the default service endpoint URL",
    withVpclattice(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpclattice" expected to be of type "string"';
      {
        vpclattice: converted,
      }
    ),
    "#withWaf":: "Use this to override the default service endpoint URL",
    withWaf(value):: (
      local converted = value;
      assert std.isString(converted) : '"waf" expected to be of type "string"';
      {
        waf: converted,
      }
    ),
    "#withWafregional":: "Use this to override the default service endpoint URL",
    withWafregional(value):: (
      local converted = value;
      assert std.isString(converted) : '"wafregional" expected to be of type "string"';
      {
        wafregional: converted,
      }
    ),
    "#withWafv2":: "Use this to override the default service endpoint URL",
    withWafv2(value):: (
      local converted = value;
      assert std.isString(converted) : '"wafv2" expected to be of type "string"';
      {
        wafv2: converted,
      }
    ),
    "#withWellarchitected":: "Use this to override the default service endpoint URL",
    withWellarchitected(value):: (
      local converted = value;
      assert std.isString(converted) : '"wellarchitected" expected to be of type "string"';
      {
        wellarchitected: converted,
      }
    ),
    "#withWorkmail":: "Use this to override the default service endpoint URL",
    withWorkmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"workmail" expected to be of type "string"';
      {
        workmail: converted,
      }
    ),
    "#withWorkspaces":: "Use this to override the default service endpoint URL",
    withWorkspaces(value):: (
      local converted = value;
      assert std.isString(converted) : '"workspaces" expected to be of type "string"';
      {
        workspaces: converted,
      }
    ),
    "#withWorkspacesweb":: "Use this to override the default service endpoint URL",
    withWorkspacesweb(value):: (
      local converted = value;
      assert std.isString(converted) : '"workspacesweb" expected to be of type "string"';
      {
        workspacesweb: converted,
      }
    ),
    "#withXray":: "Use this to override the default service endpoint URL",
    withXray(value):: (
      local converted = value;
      assert std.isString(converted) : '"xray" expected to be of type "string"';
      {
        xray: converted,
      }
    ),
  },
  ignore_tags:: {
    local block = self,
    new():: (
      {}
    ),
    "#withKeyPrefixes":: "Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.",
    withKeyPrefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
      {
        key_prefixes: converted,
      }
    ),
    "#withKeyPrefixesMixin":: "Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.",
    withKeyPrefixesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_prefixes" expected to be of type "set"';
      {
        key_prefixes+: converted,
      }
    ),
    "#withKeys":: "Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.",
    withKeys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
      {
        keys: converted,
      }
    ),
    "#withKeysMixin":: "Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.",
    withKeysMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"keys" expected to be of type "set"';
      {
        keys+: converted,
      }
    ),
  },
  withAssumeRole(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role: value,
    }
  ),
  withAssumeRoleWithWebIdentity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role_with_web_identity: value,
    }
  ),
  withDefaultTags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_tags: value,
    }
  ),
  withEndpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoints: value,
    }
  ),
  withIgnoreTags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ignore_tags: value,
    }
  ),
  withAssumeRoleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role+: converted,
    }
  ),
  withAssumeRoleWithWebIdentityMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assume_role_with_web_identity+: converted,
    }
  ),
  withDefaultTagsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_tags+: converted,
    }
  ),
  withEndpointsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoints+: converted,
    }
  ),
  withIgnoreTagsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ignore_tags+: converted,
    }
  ),
}
