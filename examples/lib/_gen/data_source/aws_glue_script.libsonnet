{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_script",
          type:: "data",
          attributes:: ["id", "language", "python_script", "region", "scala_code"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLanguage(value):: (
    local converted = value;
    assert std.isString(converted) : '"language" expected to be of type "string"';
    {
      language: converted,
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
  dag_edge:: {
    local block = self,
    new(source, target):: (
      {}
      + block.withSource(source)
      + block.withTarget(target)
    ),
    withSource(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
    withTarget(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
    withTargetParameter(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_parameter" expected to be of type "string"';
      {
        target_parameter: converted,
      }
    ),
  },
  dag_node:: {
    local block = self,
    new(id, nodeType):: (
      {}
      + block.withId(id)
      + block.withNodeType(nodeType)
    ),
    withId(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    withLineNumber(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"line_number" expected to be of type "number"';
      {
        line_number: converted,
      }
    ),
    withNodeType(value):: (
      local converted = value;
      assert std.isString(converted) : '"node_type" expected to be of type "string"';
      {
        node_type: converted,
      }
    ),
    args:: {
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
      withParam(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"param" expected to be of type "bool"';
        {
          param: converted,
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
    withArgs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        args: value,
      }
    ),
    withArgsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        args+: converted,
      }
    ),
  },
  withDagEdge(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_edge: value,
    }
  ),
  withDagNode(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_node: value,
    }
  ),
  withDagEdgeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_edge+: converted,
    }
  ),
  withDagNodeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dag_node+: converted,
    }
  ),
}
