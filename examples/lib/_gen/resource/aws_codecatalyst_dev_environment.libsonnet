{
  local block = self,
  new(terraformName, instanceType, projectName, spaceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_codecatalyst_dev_environment",
          type:: "resource",
          attributes:: ["alias", "id", "inactivity_timeout_minutes", "instance_type", "project_name", "region", "space_name"],
        },
      },
    }
    + block.withInstanceType(instanceType)
    + block.withProjectName(projectName)
    + block.withSpaceName(spaceName)
  ),
  withAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInactivityTimeoutMinutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"inactivity_timeout_minutes" expected to be of type "number"';
    {
      inactivity_timeout_minutes: converted,
    }
  ),
  withInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  withProjectName(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_name" expected to be of type "string"';
    {
      project_name: converted,
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
  withSpaceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_name" expected to be of type "string"';
    {
      space_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  ides:: {
    local block = self,
    new():: (
      {}
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withRuntime(value):: (
      local converted = value;
      assert std.isString(converted) : '"runtime" expected to be of type "string"';
      {
        runtime: converted,
      }
    ),
  },
  persistent_storage:: {
    local block = self,
    new(size):: (
      {}
      + block.withSize(size)
    ),
    withSize(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
  },
  repositories:: {
    local block = self,
    new(repositoryName):: (
      {}
      + block.withRepositoryName(repositoryName)
    ),
    withBranchName(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch_name" expected to be of type "string"';
      {
        branch_name: converted,
      }
    ),
    withRepositoryName(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_name" expected to be of type "string"';
      {
        repository_name: converted,
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
  withIdes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ides: value,
    }
  ),
  withPersistentStorage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      persistent_storage: value,
    }
  ),
  withRepositories(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withIdesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ides+: converted,
    }
  ),
  withPersistentStorageMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      persistent_storage+: converted,
    }
  ),
  withRepositoriesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories+: converted,
    }
  ),
}
