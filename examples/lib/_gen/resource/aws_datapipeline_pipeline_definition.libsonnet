{
  local block = self,
  new(terraformName, pipelineId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datapipeline_pipeline_definition",
          type:: "resource",
          attributes:: ["id", "pipeline_id", "region"],
        },
      },
    }
    + block.withPipelineId(pipelineId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPipelineId(value):: (
    local converted = value;
    assert std.isString(converted) : '"pipeline_id" expected to be of type "string"';
    {
      pipeline_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  parameter_object:: {
    local block = self,
    new(id):: (
      {}
      + block.withId(id)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    attribute:: {
      local block = self,
      new(key, stringValue):: (
        {}
        + block.withKey(key)
        + block.withStringValue(stringValue)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withStringValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"string_value" expected to be of type "string"';
        {
          string_value: converted,
        }
      ),
    },
    withAttribute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute: value,
      }
    ),
    withAttributeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attribute+: converted,
      }
    ),
  },
  parameter_value:: {
    local block = self,
    new(id, stringValue):: (
      {}
      + block.withId(id)
      + block.withStringValue(stringValue)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withStringValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"string_value" expected to be of type "string"';
      {
        string_value: converted,
      }
    ),
  },
  pipeline_object:: {
    local block = self,
    new(id, name):: (
      {}
      + block.withId(id)
      + block.withName(name)
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
    field:: {
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
      withRefValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"ref_value" expected to be of type "string"';
        {
          ref_value: converted,
        }
      ),
      withStringValue(value):: (
        local converted = value;
        assert std.isString(converted) : '"string_value" expected to be of type "string"';
        {
          string_value: converted,
        }
      ),
    },
    withField(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field: value,
      }
    ),
    withFieldMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field+: converted,
      }
    ),
  },
  withParameterObject(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_object: value,
    }
  ),
  withParameterValue(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value: value,
    }
  ),
  withPipelineObject(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_object: value,
    }
  ),
  withParameterObjectMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_object+: converted,
    }
  ),
  withParameterValueMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter_value+: converted,
    }
  ),
  withPipelineObjectMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_object+: converted,
    }
  ),
}
