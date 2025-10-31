{
  local block = self,
  new(terraformName, clusterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ecs_cluster_capacity_providers",
          type:: "resource",
          attributes:: ["capacity_providers", "cluster_name", "id", "region"],
        },
      },
    }
    + block.withClusterName(clusterName)
  ),
  withCapacityProviders(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capacity_providers" expected to be of type "set"';
    {
      capacity_providers: converted,
    }
  ),
  withCapacityProvidersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capacity_providers" expected to be of type "set"';
    {
      capacity_providers+: converted,
    }
  ),
  withClusterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
    {
      cluster_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  default_capacity_provider_strategy:: {
    local block = self,
    new(capacityProvider):: (
      {}
      + block.withCapacityProvider(capacityProvider)
    ),
    withBase(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"base" expected to be of type "number"';
      {
        base: converted,
      }
    ),
    withCapacityProvider(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
      {
        capacity_provider: converted,
      }
    ),
    withWeight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  withDefaultCapacityProviderStrategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_capacity_provider_strategy: value,
    }
  ),
  withDefaultCapacityProviderStrategyMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_capacity_provider_strategy+: converted,
    }
  ),
}
