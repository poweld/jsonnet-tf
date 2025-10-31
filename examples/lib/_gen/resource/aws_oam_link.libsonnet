{
  local block = self,
  new(terraformName, labelTemplate, resourceTypes, sinkIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_oam_link",
          type:: "resource",
          attributes:: ["arn", "id", "label", "label_template", "link_id", "region", "resource_types", "sink_arn", "sink_identifier", "tags", "tags_all"],
        },
      },
    }
    + block.withLabelTemplate(labelTemplate)
    + block.withResourceTypes(resourceTypes)
    + block.withSinkIdentifier(sinkIdentifier)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLabelTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_template" expected to be of type "string"';
    {
      label_template: converted,
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
  withResourceTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
    {
      resource_types: converted,
    }
  ),
  withResourceTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types" expected to be of type "set"';
    {
      resource_types+: converted,
    }
  ),
  withSinkIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"sink_identifier" expected to be of type "string"';
    {
      sink_identifier: converted,
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
  link_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    log_group_configuration:: {
      local block = self,
      new(filter):: (
        {}
        + block.withFilter(filter)
      ),
      withFilter(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter" expected to be of type "string"';
        {
          filter: converted,
        }
      ),
    },
    metric_configuration:: {
      local block = self,
      new(filter):: (
        {}
        + block.withFilter(filter)
      ),
      withFilter(value):: (
        local converted = value;
        assert std.isString(converted) : '"filter" expected to be of type "string"';
        {
          filter: converted,
        }
      ),
    },
    withLogGroupConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_group_configuration: value,
      }
    ),
    withMetricConfiguration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_configuration: value,
      }
    ),
    withLogGroupConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        log_group_configuration+: converted,
      }
    ),
    withMetricConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_configuration+: converted,
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
  withLinkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      link_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLinkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      link_configuration+: converted,
    }
  ),
}
