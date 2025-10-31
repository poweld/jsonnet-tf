{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transfer_workflow",
          type:: "resource",
          attributes:: ["arn", "description", "id", "region", "tags", "tags_all"],
        },
      },
    }
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  on_exception_steps:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    copy_step_details:: {
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
      withOverwriteExisting(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withFileSystemId(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
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
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withBucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          withKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        withEfsFileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        withS3FileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        withEfsFileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        withS3FileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      withDestinationFileLocation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      withDestinationFileLocationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    custom_step_details:: {
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
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      withTarget(value):: (
        local converted = value;
        assert std.isString(converted) : '"target" expected to be of type "string"';
        {
          target: converted,
        }
      ),
      withTimeoutSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
        }
      ),
    },
    decrypt_step_details:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withOverwriteExisting(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withFileSystemId(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
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
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withBucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          withKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        withEfsFileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        withS3FileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        withEfsFileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        withS3FileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      withDestinationFileLocation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      withDestinationFileLocationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    delete_step_details:: {
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
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
    },
    tag_step_details:: {
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
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      tags:: {
        local block = self,
        new(key, value):: (
          {}
          + block.withKey(key)
          + block.withValue(value)
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
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
      withTags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      withTagsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    withCopyStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details: value,
      }
    ),
    withCustomStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details: value,
      }
    ),
    withDecryptStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details: value,
      }
    ),
    withDeleteStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details: value,
      }
    ),
    withTagStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details: value,
      }
    ),
    withCopyStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details+: converted,
      }
    ),
    withCustomStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details+: converted,
      }
    ),
    withDecryptStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details+: converted,
      }
    ),
    withDeleteStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details+: converted,
      }
    ),
    withTagStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details+: converted,
      }
    ),
  },
  steps:: {
    local block = self,
    new(type):: (
      {}
      + block.withType(type)
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    copy_step_details:: {
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
      withOverwriteExisting(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withFileSystemId(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
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
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withBucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          withKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        withEfsFileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        withS3FileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        withEfsFileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        withS3FileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      withDestinationFileLocation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      withDestinationFileLocationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    custom_step_details:: {
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
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      withTarget(value):: (
        local converted = value;
        assert std.isString(converted) : '"target" expected to be of type "string"';
        {
          target: converted,
        }
      ),
      withTimeoutSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
        }
      ),
    },
    decrypt_step_details:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      withOverwriteExisting(value):: (
        local converted = value;
        assert std.isString(converted) : '"overwrite_existing" expected to be of type "string"';
        {
          overwrite_existing: converted,
        }
      ),
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      destination_file_location:: {
        local block = self,
        new():: (
          {}
        ),
        efs_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withFileSystemId(value):: (
            local converted = value;
            assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
            {
              file_system_id: converted,
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
        s3_file_location:: {
          local block = self,
          new():: (
            {}
          ),
          withBucket(value):: (
            local converted = value;
            assert std.isString(converted) : '"bucket" expected to be of type "string"';
            {
              bucket: converted,
            }
          ),
          withKey(value):: (
            local converted = value;
            assert std.isString(converted) : '"key" expected to be of type "string"';
            {
              key: converted,
            }
          ),
        },
        withEfsFileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location: value,
          }
        ),
        withS3FileLocation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location: value,
          }
        ),
        withEfsFileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            efs_file_location+: converted,
          }
        ),
        withS3FileLocationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            s3_file_location+: converted,
          }
        ),
      },
      withDestinationFileLocation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location: value,
        }
      ),
      withDestinationFileLocationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          destination_file_location+: converted,
        }
      ),
    },
    delete_step_details:: {
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
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
    },
    tag_step_details:: {
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
      withSourceFileLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"source_file_location" expected to be of type "string"';
        {
          source_file_location: converted,
        }
      ),
      tags:: {
        local block = self,
        new(key, value):: (
          {}
          + block.withKey(key)
          + block.withValue(value)
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
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
      withTags(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags: value,
        }
      ),
      withTagsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tags+: converted,
        }
      ),
    },
    withCopyStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details: value,
      }
    ),
    withCustomStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details: value,
      }
    ),
    withDecryptStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details: value,
      }
    ),
    withDeleteStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details: value,
      }
    ),
    withTagStepDetails(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details: value,
      }
    ),
    withCopyStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        copy_step_details+: converted,
      }
    ),
    withCustomStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        custom_step_details+: converted,
      }
    ),
    withDecryptStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        decrypt_step_details+: converted,
      }
    ),
    withDeleteStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        delete_step_details+: converted,
      }
    ),
    withTagStepDetailsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_step_details+: converted,
      }
    ),
  },
  withOnExceptionSteps(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_exception_steps: value,
    }
  ),
  withSteps(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      steps: value,
    }
  ),
  withOnExceptionStepsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_exception_steps+: converted,
    }
  ),
  withStepsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      steps+: converted,
    }
  ),
}
