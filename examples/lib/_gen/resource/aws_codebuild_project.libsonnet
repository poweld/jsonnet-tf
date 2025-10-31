{
  local block = self,
  new(terraformName, name, serviceRole):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codebuild_project",
          type:: "resource",
          attributes:: ["arn", "badge_enabled", "badge_url", "build_timeout", "concurrent_build_limit", "description", "encryption_key", "id", "name", "project_visibility", "public_project_alias", "queued_timeout", "region", "resource_access_role", "service_role", "source_version", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withServiceRole(serviceRole)
  ),
  withBadgeEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"badge_enabled" expected to be of type "bool"';
    {
      badge_enabled: converted,
    }
  ),
  withBuildTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"build_timeout" expected to be of type "number"';
    {
      build_timeout: converted,
    }
  ),
  withConcurrentBuildLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"concurrent_build_limit" expected to be of type "number"';
    {
      concurrent_build_limit: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withEncryptionKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_key" expected to be of type "string"';
    {
      encryption_key: converted,
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
  withProjectVisibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_visibility" expected to be of type "string"';
    {
      project_visibility: converted,
    }
  ),
  withQueuedTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"queued_timeout" expected to be of type "number"';
    {
      queued_timeout: converted,
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
  withResourceAccessRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_access_role" expected to be of type "string"';
    {
      resource_access_role: converted,
    }
  ),
  withServiceRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  withSourceVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_version" expected to be of type "string"';
    {
      source_version: converted,
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
  artifacts:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withArtifactIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"artifact_identifier" expected to be of type "string"';
      {
        artifact_identifier: converted,
      }
    ),
    withBucketOwnerAccess(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_owner_access" expected to be of type "string"';
      {
        bucket_owner_access: converted,
      }
    ),
    withEncryptionDisabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
      {
        encryption_disabled: converted,
      }
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withNamespaceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace_type" expected to be of type "string"';
      {
        namespace_type: converted,
      }
    ),
    withOverrideArtifactName(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"override_artifact_name" expected to be of type "bool"';
      {
        override_artifact_name: converted,
      }
    ),
    withPackaging(value):: (
      local converted = value;
      assert std.isString(converted) : '"packaging" expected to be of type "string"';
      {
        packaging: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  build_batch_config:: {
    local block = self,
    new(serviceRole):: (
      {}
      + block.withServiceRole(serviceRole)
    ),
    withCombineArtifacts(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"combine_artifacts" expected to be of type "bool"';
      {
        combine_artifacts: converted,
      }
    ),
    withServiceRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_role" expected to be of type "string"';
      {
        service_role: converted,
      }
    ),
    withTimeoutInMins(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_in_mins" expected to be of type "number"';
      {
        timeout_in_mins: converted,
      }
    ),
    restrictions:: {
      local block = self,
      new():: (
        {}
      ),
      withComputeTypesAllowed(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"compute_types_allowed" expected to be of type "list"';
        {
          compute_types_allowed: converted,
        }
      ),
      withComputeTypesAllowedMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"compute_types_allowed" expected to be of type "list"';
        {
          compute_types_allowed+: converted,
        }
      ),
      withMaximumBuildsAllowed(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_builds_allowed" expected to be of type "number"';
        {
          maximum_builds_allowed: converted,
        }
      ),
    },
    withRestrictions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        restrictions: value,
      }
    ),
    withRestrictionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        restrictions+: converted,
      }
    ),
  },
  cache:: {
    local block = self,
    new():: (
      {}
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withModes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"modes" expected to be of type "list"';
      {
        modes: converted,
      }
    ),
    withModesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"modes" expected to be of type "list"';
      {
        modes+: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  environment:: {
    local block = self,
    new(computeType, image, type):: (
      {}
      + block.withComputeType(computeType)
      + block.withImage(image)
      + block.withType(type)
    ),
    withCertificate(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate" expected to be of type "string"';
      {
        certificate: converted,
      }
    ),
    withComputeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"compute_type" expected to be of type "string"';
      {
        compute_type: converted,
      }
    ),
    withImage(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    withImagePullCredentialsType(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_pull_credentials_type" expected to be of type "string"';
      {
        image_pull_credentials_type: converted,
      }
    ),
    withPrivilegedMode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"privileged_mode" expected to be of type "bool"';
      {
        privileged_mode: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    docker_server:: {
      local block = self,
      new(computeType):: (
        {}
        + block.withComputeType(computeType)
      ),
      withComputeType(value):: (
        local converted = value;
        assert std.isString(converted) : '"compute_type" expected to be of type "string"';
        {
          compute_type: converted,
        }
      ),
      withSecurityGroupIds(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
        {
          security_group_ids: converted,
        }
      ),
      withSecurityGroupIdsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"security_group_ids" expected to be of type "list"';
        {
          security_group_ids+: converted,
        }
      ),
    },
    environment_variable:: {
      local block = self,
      new(name, value):: (
        {}
        + block.withName(name)
        + block.withValue(value)
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
      withValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    fleet:: {
      local block = self,
      new():: (
        {}
      ),
      withFleetArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"fleet_arn" expected to be of type "string"';
        {
          fleet_arn: converted,
        }
      ),
    },
    registry_credential:: {
      local block = self,
      new(credential, credentialProvider):: (
        {}
        + block.withCredential(credential)
        + block.withCredentialProvider(credentialProvider)
      ),
      withCredential(value):: (
        local converted = value;
        assert std.isString(converted) : '"credential" expected to be of type "string"';
        {
          credential: converted,
        }
      ),
      withCredentialProvider(value):: (
        local converted = value;
        assert std.isString(converted) : '"credential_provider" expected to be of type "string"';
        {
          credential_provider: converted,
        }
      ),
    },
    withDockerServer(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_server: value,
      }
    ),
    withEnvironmentVariable(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_variable: value,
      }
    ),
    withFleet(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fleet: value,
      }
    ),
    withRegistryCredential(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        registry_credential: value,
      }
    ),
    withDockerServerMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_server+: converted,
      }
    ),
    withEnvironmentVariableMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        environment_variable+: converted,
      }
    ),
    withFleetMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fleet+: converted,
      }
    ),
    withRegistryCredentialMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        registry_credential+: converted,
      }
    ),
  },
  file_system_locations:: {
    local block = self,
    new():: (
      {}
    ),
    withIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"identifier" expected to be of type "string"';
      {
        identifier: converted,
      }
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withMountOptions(value):: (
      local converted = value;
      assert std.isString(converted) : '"mount_options" expected to be of type "string"';
      {
        mount_options: converted,
      }
    ),
    withMountPoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"mount_point" expected to be of type "string"';
      {
        mount_point: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  logs_config:: {
    local block = self,
    new():: (
      {}
    ),
    cloudwatch_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withGroupName(value):: (
        local converted = value;
        assert std.isString(converted) : '"group_name" expected to be of type "string"';
        {
          group_name: converted,
        }
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
      withStreamName(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_name" expected to be of type "string"';
        {
          stream_name: converted,
        }
      ),
    },
    s3_logs:: {
      local block = self,
      new():: (
        {}
      ),
      withBucketOwnerAccess(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_owner_access" expected to be of type "string"';
        {
          bucket_owner_access: converted,
        }
      ),
      withEncryptionDisabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
        {
          encryption_disabled: converted,
        }
      ),
      withLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"location" expected to be of type "string"';
        {
          location: converted,
        }
      ),
      withStatus(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
    },
    withCloudwatchLogs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs: value,
      }
    ),
    withS3Logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs: value,
      }
    ),
    withCloudwatchLogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs+: converted,
      }
    ),
    withS3LogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs+: converted,
      }
    ),
  },
  secondary_artifacts:: {
    local block = self,
    new(artifactIdentifier, type):: (
      {}
      + block.withArtifactIdentifier(artifactIdentifier)
      + block.withType(type)
    ),
    withArtifactIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"artifact_identifier" expected to be of type "string"';
      {
        artifact_identifier: converted,
      }
    ),
    withBucketOwnerAccess(value):: (
      local converted = value;
      assert std.isString(converted) : '"bucket_owner_access" expected to be of type "string"';
      {
        bucket_owner_access: converted,
      }
    ),
    withEncryptionDisabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"encryption_disabled" expected to be of type "bool"';
      {
        encryption_disabled: converted,
      }
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withNamespaceType(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace_type" expected to be of type "string"';
      {
        namespace_type: converted,
      }
    ),
    withOverrideArtifactName(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"override_artifact_name" expected to be of type "bool"';
      {
        override_artifact_name: converted,
      }
    ),
    withPackaging(value):: (
      local converted = value;
      assert std.isString(converted) : '"packaging" expected to be of type "string"';
      {
        packaging: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  secondary_source_version:: {
    local block = self,
    new(sourceIdentifier, sourceVersion):: (
      {}
      + block.withSourceIdentifier(sourceIdentifier)
      + block.withSourceVersion(sourceVersion)
    ),
    withSourceIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identifier" expected to be of type "string"';
      {
        source_identifier: converted,
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
  secondary_sources:: {
    local block = self,
    new(sourceIdentifier, type):: (
      {}
      + block.withSourceIdentifier(sourceIdentifier)
      + block.withType(type)
    ),
    withBuildspec(value):: (
      local converted = value;
      assert std.isString(converted) : '"buildspec" expected to be of type "string"';
      {
        buildspec: converted,
      }
    ),
    withGitCloneDepth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"git_clone_depth" expected to be of type "number"';
      {
        git_clone_depth: converted,
      }
    ),
    withInsecureSsl(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insecure_ssl" expected to be of type "bool"';
      {
        insecure_ssl: converted,
      }
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withReportBuildStatus(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"report_build_status" expected to be of type "bool"';
      {
        report_build_status: converted,
      }
    ),
    withSourceIdentifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"source_identifier" expected to be of type "string"';
      {
        source_identifier: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    auth:: {
      local block = self,
      new(resource, type):: (
        {}
        + block.withResource(resource)
        + block.withType(type)
      ),
      withResource(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource" expected to be of type "string"';
        {
          resource: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    build_status_config:: {
      local block = self,
      new():: (
        {}
      ),
      withContext(value):: (
        local converted = value;
        assert std.isString(converted) : '"context" expected to be of type "string"';
        {
          context: converted,
        }
      ),
      withTargetUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_url" expected to be of type "string"';
        {
          target_url: converted,
        }
      ),
    },
    git_submodules_config:: {
      local block = self,
      new(fetchSubmodules):: (
        {}
        + block.withFetchSubmodules(fetchSubmodules)
      ),
      withFetchSubmodules(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"fetch_submodules" expected to be of type "bool"';
        {
          fetch_submodules: converted,
        }
      ),
    },
    withAuth(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth: value,
      }
    ),
    withBuildStatusConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config: value,
      }
    ),
    withGitSubmodulesConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config: value,
      }
    ),
    withAuthMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth+: converted,
      }
    ),
    withBuildStatusConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config+: converted,
      }
    ),
    withGitSubmodulesConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config+: converted,
      }
    ),
  },
  source:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withBuildspec(value):: (
      local converted = value;
      assert std.isString(converted) : '"buildspec" expected to be of type "string"';
      {
        buildspec: converted,
      }
    ),
    withGitCloneDepth(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"git_clone_depth" expected to be of type "number"';
      {
        git_clone_depth: converted,
      }
    ),
    withInsecureSsl(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insecure_ssl" expected to be of type "bool"';
      {
        insecure_ssl: converted,
      }
    ),
    withLocation(value):: (
      local converted = value;
      assert std.isString(converted) : '"location" expected to be of type "string"';
      {
        location: converted,
      }
    ),
    withReportBuildStatus(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"report_build_status" expected to be of type "bool"';
      {
        report_build_status: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    auth:: {
      local block = self,
      new(resource, type):: (
        {}
        + block.withResource(resource)
        + block.withType(type)
      ),
      withResource(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource" expected to be of type "string"';
        {
          resource: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    build_status_config:: {
      local block = self,
      new():: (
        {}
      ),
      withContext(value):: (
        local converted = value;
        assert std.isString(converted) : '"context" expected to be of type "string"';
        {
          context: converted,
        }
      ),
      withTargetUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"target_url" expected to be of type "string"';
        {
          target_url: converted,
        }
      ),
    },
    git_submodules_config:: {
      local block = self,
      new(fetchSubmodules):: (
        {}
        + block.withFetchSubmodules(fetchSubmodules)
      ),
      withFetchSubmodules(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"fetch_submodules" expected to be of type "bool"';
        {
          fetch_submodules: converted,
        }
      ),
    },
    withAuth(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth: value,
      }
    ),
    withBuildStatusConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config: value,
      }
    ),
    withGitSubmodulesConfig(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config: value,
      }
    ),
    withAuthMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auth+: converted,
      }
    ),
    withBuildStatusConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        build_status_config+: converted,
      }
    ),
    withGitSubmodulesConfigMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        git_submodules_config+: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(securityGroupIds, subnets, vpcId):: (
      {}
      + block.withSecurityGroupIds(securityGroupIds)
      + block.withSubnets(subnets)
      + block.withVpcId(vpcId)
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
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  withArtifacts(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifacts: value,
    }
  ),
  withBuildBatchConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      build_batch_config: value,
    }
  ),
  withCache(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache: value,
    }
  ),
  withEnvironment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment: value,
    }
  ),
  withFileSystemLocations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_locations: value,
    }
  ),
  withLogsConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_config: value,
    }
  ),
  withSecondaryArtifacts(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_artifacts: value,
    }
  ),
  withSecondarySourceVersion(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_source_version: value,
    }
  ),
  withSecondarySources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_sources: value,
    }
  ),
  withSource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source: value,
    }
  ),
  withVpcConfig(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  withArtifactsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifacts+: converted,
    }
  ),
  withBuildBatchConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      build_batch_config+: converted,
    }
  ),
  withCacheMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache+: converted,
    }
  ),
  withEnvironmentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment+: converted,
    }
  ),
  withFileSystemLocationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_locations+: converted,
    }
  ),
  withLogsConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_config+: converted,
    }
  ),
  withSecondaryArtifactsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_artifacts+: converted,
    }
  ),
  withSecondarySourceVersionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_source_version+: converted,
    }
  ),
  withSecondarySourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      secondary_sources+: converted,
    }
  ),
  withSourceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source+: converted,
    }
  ),
  withVpcConfigMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
