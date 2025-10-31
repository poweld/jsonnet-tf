{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_classifier",
          type:: "resource",
          attributes:: ["id", "name", "region"],
        },
      },
    }
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
  csv_classifier:: {
    local block = self,
    new():: (
      {}
    ),
    withAllowSingleColumn(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_single_column" expected to be of type "bool"';
      {
        allow_single_column: converted,
      }
    ),
    withContainsHeader(value):: (
      local converted = value;
      assert std.isString(converted) : '"contains_header" expected to be of type "string"';
      {
        contains_header: converted,
      }
    ),
    withCustomDatatypeConfigured(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"custom_datatype_configured" expected to be of type "bool"';
      {
        custom_datatype_configured: converted,
      }
    ),
    withCustomDatatypes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"custom_datatypes" expected to be of type "list"';
      {
        custom_datatypes: converted,
      }
    ),
    withCustomDatatypesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"custom_datatypes" expected to be of type "list"';
      {
        custom_datatypes+: converted,
      }
    ),
    withDelimiter(value):: (
      local converted = value;
      assert std.isString(converted) : '"delimiter" expected to be of type "string"';
      {
        delimiter: converted,
      }
    ),
    withDisableValueTrimming(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_value_trimming" expected to be of type "bool"';
      {
        disable_value_trimming: converted,
      }
    ),
    withHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"header" expected to be of type "list"';
      {
        header: converted,
      }
    ),
    withHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"header" expected to be of type "list"';
      {
        header+: converted,
      }
    ),
    withQuoteSymbol(value):: (
      local converted = value;
      assert std.isString(converted) : '"quote_symbol" expected to be of type "string"';
      {
        quote_symbol: converted,
      }
    ),
    withSerde(value):: (
      local converted = value;
      assert std.isString(converted) : '"serde" expected to be of type "string"';
      {
        serde: converted,
      }
    ),
  },
  grok_classifier:: {
    local block = self,
    new(classification, grokPattern):: (
      {}
      + block.withClassification(classification)
      + block.withGrokPattern(grokPattern)
    ),
    withClassification(value):: (
      local converted = value;
      assert std.isString(converted) : '"classification" expected to be of type "string"';
      {
        classification: converted,
      }
    ),
    withCustomPatterns(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_patterns" expected to be of type "string"';
      {
        custom_patterns: converted,
      }
    ),
    withGrokPattern(value):: (
      local converted = value;
      assert std.isString(converted) : '"grok_pattern" expected to be of type "string"';
      {
        grok_pattern: converted,
      }
    ),
  },
  json_classifier:: {
    local block = self,
    new(jsonPath):: (
      {}
      + block.withJsonPath(jsonPath)
    ),
    withJsonPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"json_path" expected to be of type "string"';
      {
        json_path: converted,
      }
    ),
  },
  xml_classifier:: {
    local block = self,
    new(classification, rowTag):: (
      {}
      + block.withClassification(classification)
      + block.withRowTag(rowTag)
    ),
    withClassification(value):: (
      local converted = value;
      assert std.isString(converted) : '"classification" expected to be of type "string"';
      {
        classification: converted,
      }
    ),
    withRowTag(value):: (
      local converted = value;
      assert std.isString(converted) : '"row_tag" expected to be of type "string"';
      {
        row_tag: converted,
      }
    ),
  },
  withCsvClassifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      csv_classifier: value,
    }
  ),
  withGrokClassifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grok_classifier: value,
    }
  ),
  withJsonClassifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      json_classifier: value,
    }
  ),
  withXmlClassifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xml_classifier: value,
    }
  ),
  withCsvClassifierMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      csv_classifier+: converted,
    }
  ),
  withGrokClassifierMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      grok_classifier+: converted,
    }
  ),
  withJsonClassifierMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      json_classifier+: converted,
    }
  ),
  withXmlClassifierMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xml_classifier+: converted,
    }
  ),
}
