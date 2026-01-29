{
  local block = self,

  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_behavior",
          type:: "resource",
          attributes:: ["id", "location_granularity_type", "name", "number_of_authentications", "radius_from_location", "status", "type", "velocity"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),

  withId(value):: (
    assert std.isString(value) : '"id" expected to be of type "string"';

    {
      id: value,
    }
  ),

  "#withLocationGranularityType":: "Determines the method and level of detail used to evaluate the behavior. Required for `ANOMALOUS_LOCATION` behavior type. Can be set to `LAT_LONG`, `CITY`, `COUNTRY` or `SUBDIVISION`.",
  withLocationGranularityType(value):: (
    assert std.isString(value) : '"location_granularity_type" expected to be of type "string"';

    {
      location_granularity_type: value,
    }
  ),

  "#withName":: "Name of the behavior",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withNumberOfAuthentications":: "The number of recent authentications used to evaluate the behavior. Required for `ANOMALOUS_LOCATION`, `ANOMALOUS_DEVICE` and `ANOMALOUS_IP` behavior types.",
  withNumberOfAuthentications(value):: (
    assert std.isNumber(value) : '"number_of_authentications" expected to be of type "number"';

    {
      number_of_authentications: value,
    }
  ),

  "#withRadiusFromLocation":: "Radius from location (in kilometers). Should be at least 5. Required when `location_granularity_type` is set to `LAT_LONG`.",
  withRadiusFromLocation(value):: (
    assert std.isNumber(value) : '"radius_from_location" expected to be of type "number"';

    {
      radius_from_location: value,
    }
  ),

  "#withStatus":: "Behavior status: ACTIVE or INACTIVE. Default: `ACTIVE`",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withType":: "Type of the behavior. Can be set to `ANOMALOUS_LOCATION`, `ANOMALOUS_DEVICE`, `ANOMALOUS_IP` or `VELOCITY`. Resource will be recreated when the type changes.e",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),

  "#withVelocity":: "Velocity (in kilometers per hour). Should be at least 1. Required for `VELOCITY` behavior",
  withVelocity(value):: (
    assert std.isNumber(value) : '"velocity" expected to be of type "number"';

    {
      velocity: value,
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
