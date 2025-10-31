{
  local block = self,
  new(terraformName, description, workteamName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_workteam",
          type:: "resource",
          attributes:: ["arn", "description", "id", "region", "subdomain", "tags", "tags_all", "workforce_name", "workteam_name"],
        },
      },
    }
    + block.withDescription(description)
    + block.withWorkteamName(workteamName)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  withWorkforceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"workforce_name" expected to be of type "string"';
    {
      workforce_name: converted,
    }
  ),
  withWorkteamName(value):: (
    local converted = value;
    assert std.isString(converted) : '"workteam_name" expected to be of type "string"';
    {
      workteam_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  member_definition:: {
    local block = self,
    new():: (
      {}
    ),
    cognito_member_definition:: {
      local block = self,
      new(clientId, userGroup, userPool):: (
        {}
        + block.withClientId(clientId)
        + block.withUserGroup(userGroup)
        + block.withUserPool(userPool)
      ),
      withClientId(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_id" expected to be of type "string"';
        {
          client_id: converted,
        }
      ),
      withUserGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_group" expected to be of type "string"';
        {
          user_group: converted,
        }
      ),
      withUserPool(value):: (
        local converted = value;
        assert std.isString(converted) : '"user_pool" expected to be of type "string"';
        {
          user_pool: converted,
        }
      ),
    },
    oidc_member_definition:: {
      local block = self,
      new(groups):: (
        {}
        + block.withGroups(groups)
      ),
      withGroups(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups: converted,
        }
      ),
      withGroupsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
        {
          groups+: converted,
        }
      ),
    },
    withCognitoMemberDefinition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_member_definition: value,
      }
    ),
    withOidcMemberDefinition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_member_definition: value,
      }
    ),
    withCognitoMemberDefinitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cognito_member_definition+: converted,
      }
    ),
    withOidcMemberDefinitionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_member_definition+: converted,
      }
    ),
  },
  notification_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withNotificationTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_topic_arn" expected to be of type "string"';
      {
        notification_topic_arn: converted,
      }
    ),
  },
  worker_access_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_presign:: {
      local block = self,
      new():: (
        {}
      ),
      iam_policy_constraints:: {
        local block = self,
        new():: (
          {}
        ),
        withSourceIp(value):: (
          local converted = value;
          assert std.isString(converted) : '"source_ip" expected to be of type "string"';
          {
            source_ip: converted,
          }
        ),
        withVpcSourceIp(value):: (
          local converted = value;
          assert std.isString(converted) : '"vpc_source_ip" expected to be of type "string"';
          {
            vpc_source_ip: converted,
          }
        ),
      },
      withIamPolicyConstraints(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam_policy_constraints: value,
        }
      ),
      withIamPolicyConstraintsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          iam_policy_constraints+: converted,
        }
      ),
    },
    withS3Presign(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_presign: value,
      }
    ),
    withS3PresignMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_presign+: converted,
      }
    ),
  },
  withMemberDefinition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member_definition: value,
    }
  ),
  withNotificationConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration: value,
    }
  ),
  withWorkerAccessConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_access_configuration: value,
    }
  ),
  withMemberDefinitionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      member_definition+: converted,
    }
  ),
  withNotificationConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_configuration+: converted,
    }
  ),
  withWorkerAccessConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      worker_access_configuration+: converted,
    }
  ),
}
