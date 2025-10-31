{
  local block = self,
  new(terraformName, zoneId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53_records",
          type:: "data",
          attributes:: ["name_regex", "resource_record_sets", "zone_id"],
        },
      },
    }
    + block.withZoneId(zoneId)
  ),
  withNameRegex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
    }
  ),
  withZoneId(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
