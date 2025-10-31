{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_glue_connection",
          type:: "resource",
          attributes:: ["arn", "athena_properties", "catalog_id", "connection_properties", "connection_type", "description", "id", "match_criteria", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withAthenaProperties(value):: (
    local converted = value;
    assert std.isObject(converted) : '"athena_properties" expected to be of type "map"';
    {
      athena_properties: converted,
    }
  ),
  withCatalogId(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  withConnectionProperties(value):: (
    local converted = value;
    assert std.isObject(converted) : '"connection_properties" expected to be of type "map"';
    {
      connection_properties: converted,
    }
  ),
  withConnectionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_type" expected to be of type "string"';
    {
      connection_type: converted,
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
  withMatchCriteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"match_criteria" expected to be of type "list"';
    {
      match_criteria: converted,
    }
  ),
  withMatchCriteriaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"match_criteria" expected to be of type "list"';
    {
      match_criteria+: converted,
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
  physical_connection_requirements:: {
    local block = self,
    new():: (
      {}
    ),
    withAvailabilityZone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    withSecurityGroupIdList(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_id_list" expected to be of type "set"';
      {
        security_group_id_list: converted,
      }
    ),
    withSecurityGroupIdListMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_id_list" expected to be of type "set"';
      {
        security_group_id_list+: converted,
      }
    ),
    withSubnetId(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
      }
    ),
  },
  withPhysicalConnectionRequirements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_connection_requirements: value,
    }
  ),
  withPhysicalConnectionRequirementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_connection_requirements+: converted,
    }
  ),
}
