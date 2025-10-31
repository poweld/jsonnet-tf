{
  local block = self,
  new(terraformName, serviceCode):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_pricing_product",
          type:: "data",
          attributes:: ["id", "result", "service_code"],
        },
      },
    }
    + block.withServiceCode(serviceCode)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withServiceCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_code" expected to be of type "string"';
    {
      service_code: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  filters:: {
    local block = self,
    new(field, value):: (
      {}
      + block.withField(field)
      + block.withValue(value)
    ),
    withField(value):: (
      local converted = value;
      assert std.isString(converted) : '"field" expected to be of type "string"';
      {
        field: converted,
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
  withFilters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  withFiltersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
}
