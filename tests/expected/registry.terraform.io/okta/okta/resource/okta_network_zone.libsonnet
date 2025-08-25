{
  local block = self,
  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_network_zone",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["asns", "dynamic_locations", "dynamic_locations_exclude", "dynamic_proxy_type", "gateways", "id", "ip_service_categories_exclude", "ip_service_categories_include", "name", "proxies", "status", "type", "usage"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withName(name)
    + block.withType(type)
  ),
  "#withAsns":: "List of asns included. Format of each array value: a string representation of an ASN numeric value. Use with type `DYNAMIC` or `DYNAMIC_V2`",
  withAsns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asns" expected to be of type "set"';
    {
      asns: converted,
    }
  ),
  "#withAsnsMixin":: "List of asns included. Format of each array value: a string representation of an ASN numeric value. Use with type `DYNAMIC` or `DYNAMIC_V2`",
  withAsnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asns" expected to be of type "set"';
    {
      asns+: converted,
    }
  ),
  "#withDynamicLocations":: "Array of locations ISO-3166-1(2) included. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC` or `DYNAMIC_V2`",
  withDynamicLocations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations" expected to be of type "set"';
    {
      dynamic_locations: converted,
    }
  ),
  "#withDynamicLocationsMixin":: "Array of locations ISO-3166-1(2) included. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC` or `DYNAMIC_V2`",
  withDynamicLocationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations" expected to be of type "set"';
    {
      dynamic_locations+: converted,
    }
  ),
  "#withDynamicLocationsExclude":: "Array of locations ISO-3166-1(2) excluded. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC_V2`",
  withDynamicLocationsExclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations_exclude" expected to be of type "set"';
    {
      dynamic_locations_exclude: converted,
    }
  ),
  "#withDynamicLocationsExcludeMixin":: "Array of locations ISO-3166-1(2) excluded. Format code: countryCode OR countryCode-regionCode. Use with type `DYNAMIC_V2`",
  withDynamicLocationsExcludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dynamic_locations_exclude" expected to be of type "set"';
    {
      dynamic_locations_exclude+: converted,
    }
  ),
  "#withDynamicProxyType":: "Type of proxy being controlled by this dynamic network zone - can be one of `Any`, `TorAnonymizer` or `NotTorAnonymizer`. Use with type `DYNAMIC`",
  withDynamicProxyType(value):: (
    local converted = value;
    assert std.isString(converted) : '"dynamic_proxy_type" expected to be of type "string"';
    {
      dynamic_proxy_type: converted,
    }
  ),
  "#withGateways":: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Use with type `IP`",
  withGateways(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateways" expected to be of type "set"';
    {
      gateways: converted,
    }
  ),
  "#withGatewaysMixin":: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Use with type `IP`",
  withGatewaysMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateways" expected to be of type "set"';
    {
      gateways+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIpServiceCategoriesExclude":: "List of ip service excluded. Use with type `DYNAMIC_V2`",
  withIpServiceCategoriesExclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_exclude" expected to be of type "set"';
    {
      ip_service_categories_exclude: converted,
    }
  ),
  "#withIpServiceCategoriesExcludeMixin":: "List of ip service excluded. Use with type `DYNAMIC_V2`",
  withIpServiceCategoriesExcludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_exclude" expected to be of type "set"';
    {
      ip_service_categories_exclude+: converted,
    }
  ),
  "#withIpServiceCategoriesInclude":: "List of ip service included. Use with type `DYNAMIC_V2`",
  withIpServiceCategoriesInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_include" expected to be of type "set"';
    {
      ip_service_categories_include: converted,
    }
  ),
  "#withIpServiceCategoriesIncludeMixin":: "List of ip service included. Use with type `DYNAMIC_V2`",
  withIpServiceCategoriesIncludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ip_service_categories_include" expected to be of type "set"';
    {
      ip_service_categories_include+: converted,
    }
  ),
  "#withName":: "Name of the Network Zone Resource",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withProxies":: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Can not be set if `usage` is set to `BLOCKLIST`. Use with type `IP`",
  withProxies(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"proxies" expected to be of type "set"';
    {
      proxies: converted,
    }
  ),
  "#withProxiesMixin":: "Array of values in CIDR/range form depending on the way it's been declared (i.e. CIDR will contain /suffix). Please check API docs for examples. Can not be set if `usage` is set to `BLOCKLIST`. Use with type `IP`",
  withProxiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"proxies" expected to be of type "set"';
    {
      proxies+: converted,
    }
  ),
  "#withStatus":: "Network Status - can either be `ACTIVE` or `INACTIVE` only",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "Type of the Network Zone - can be `IP`, `DYNAMIC` or `DYNAMIC_V2` only",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUsage":: "Usage of the Network Zone - can be either `POLICY` or `BLOCKLIST`. By default, it is `POLICY`",
  withUsage(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage" expected to be of type "string"';
    {
      usage: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
