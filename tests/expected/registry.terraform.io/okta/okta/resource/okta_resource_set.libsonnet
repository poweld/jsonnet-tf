{
  local block = self,
  new(name, description, label):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_resource_set",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["description", "id", "label", "resources", "resources_orn"],
      },
    }
    + block.withDescription(description)
    + block.withLabel(label)
  ),
  "#withDescription":: "A description of the Resource Set",
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
  "#withLabel":: "Unique name given to the Resource Set",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withResources":: "The endpoints that reference the resources to be included in the new Resource Set. At least one endpoint must be specified when creating resource set. Only one of 'resources' or 'resources_orn' can be specified.",
  withResources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources: converted,
    }
  ),
  "#withResourcesMixin":: "The endpoints that reference the resources to be included in the new Resource Set. At least one endpoint must be specified when creating resource set. Only one of 'resources' or 'resources_orn' can be specified.",
  withResourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources+: converted,
    }
  ),
  "#withResourcesOrn":: "The orn(Okta Resource Name) that reference the resources to be included in the new Resource Set. At least one orn must be specified when creating resource set. Only one of 'resources' or 'resources_orn' can be specified.",
  withResourcesOrn(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources_orn" expected to be of type "set"';
    {
      resources_orn: converted,
    }
  ),
  "#withResourcesOrnMixin":: "The orn(Okta Resource Name) that reference the resources to be included in the new Resource Set. At least one orn must be specified when creating resource set. Only one of 'resources' or 'resources_orn' can be specified.",
  withResourcesOrnMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources_orn" expected to be of type "set"';
    {
      resources_orn+: converted,
    }
  ),
}
