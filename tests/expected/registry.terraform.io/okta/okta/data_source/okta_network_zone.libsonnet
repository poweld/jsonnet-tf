{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_network_zone",
          type:: "data",
          attributes:: ["asns", "dynamic_locations", "dynamic_locations_exclude", "dynamic_proxy_type", "gateways", "id", "ip_service_categories_exclude", "ip_service_categories_include", "name", "proxies", "status", "type", "usage"],
        },
      },
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
  "#withId":: "ID of the network zone to retrieve, conflicts with `name`.",
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
  "#withName":: "Name of the network zone to retrieve, conflicts with `id`.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
<<<<<<< HEAD
        name:: value,
=======
        type: value,
>>>>>>> fa00a8f (update test expected output)
      },
    },
  },
}
