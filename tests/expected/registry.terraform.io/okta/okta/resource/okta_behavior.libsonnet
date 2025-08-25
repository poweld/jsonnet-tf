{
  local block = self,
  new(name, type):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_behavior",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "id", "location_granularity_type", "number_of_authentications", "radius_from_location", "status", "type", "velocity"],
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLocationGranularityType":: "Determines the method and level of detail used to evaluate the behavior. Required for `ANOMALOUS_LOCATION` behavior type. Can be set to `LAT_LONG`, `CITY`, `COUNTRY` or `SUBDIVISION`.",
  withLocationGranularityType(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_granularity_type" expected to be of type "string"';
    {
      location_granularity_type: converted,
    }
  ),
  "#withName":: "Name of the behavior",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withNumberOfAuthentications":: "The number of recent authentications used to evaluate the behavior. Required for `ANOMALOUS_LOCATION`, `ANOMALOUS_DEVICE` and `ANOMALOUS_IP` behavior types.",
  withNumberOfAuthentications(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_authentications" expected to be of type "number"';
    {
      number_of_authentications: converted,
    }
  ),
  "#withRadiusFromLocation":: "Radius from location (in kilometers). Should be at least 5. Required when `location_granularity_type` is set to `LAT_LONG`.",
  withRadiusFromLocation(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_from_location" expected to be of type "number"';
    {
      radius_from_location: converted,
    }
  ),
  "#withStatus":: "Behavior status: ACTIVE or INACTIVE. Default: `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "Type of the behavior. Can be set to `ANOMALOUS_LOCATION`, `ANOMALOUS_DEVICE`, `ANOMALOUS_IP` or `VELOCITY`. Resource will be recreated when the type changes.e",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withVelocity":: "Velocity (in kilometers per hour). Should be at least 1. Required for `VELOCITY` behavior",
  withVelocity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"velocity" expected to be of type "number"';
    {
      velocity: converted,
    }
  ),
}
