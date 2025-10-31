{
  local block = self,
  new(terraformName, authenticationProtocol, directoryId, displayLabel, radiusPort, radiusRetries, radiusServers, radiusTimeout, sharedSecret):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_directory_service_radius_settings",
          type:: "resource",
          attributes:: ["authentication_protocol", "directory_id", "display_label", "id", "radius_port", "radius_retries", "radius_servers", "radius_timeout", "region", "shared_secret", "use_same_username"],
        },
      },
    }
    + block.withAuthenticationProtocol(authenticationProtocol)
    + block.withDirectoryId(directoryId)
    + block.withDisplayLabel(displayLabel)
    + block.withRadiusPort(radiusPort)
    + block.withRadiusRetries(radiusRetries)
    + block.withRadiusServers(radiusServers)
    + block.withRadiusTimeout(radiusTimeout)
    + block.withSharedSecret(sharedSecret)
  ),
  withAuthenticationProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_protocol" expected to be of type "string"';
    {
      authentication_protocol: converted,
    }
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withDisplayLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_label" expected to be of type "string"';
    {
      display_label: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withRadiusPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_port" expected to be of type "number"';
    {
      radius_port: converted,
    }
  ),
  withRadiusRetries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_retries" expected to be of type "number"';
    {
      radius_retries: converted,
    }
  ),
  withRadiusServers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"radius_servers" expected to be of type "set"';
    {
      radius_servers: converted,
    }
  ),
  withRadiusServersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"radius_servers" expected to be of type "set"';
    {
      radius_servers+: converted,
    }
  ),
  withRadiusTimeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_timeout" expected to be of type "number"';
    {
      radius_timeout: converted,
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
  withSharedSecret(value):: (
    local converted = value;
    assert std.isString(converted) : '"shared_secret" expected to be of type "string"';
    {
      shared_secret: converted,
    }
  ),
  withUseSameUsername(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_same_username" expected to be of type "bool"';
    {
      use_same_username: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
