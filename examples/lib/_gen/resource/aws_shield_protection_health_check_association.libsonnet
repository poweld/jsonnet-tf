{
  local block = self,
  new(terraformName, healthCheckArn, shieldProtectionId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_shield_protection_health_check_association",
          type:: "resource",
          attributes:: ["health_check_arn", "id", "shield_protection_id"],
        },
      },
    }
    + block.withHealthCheckArn(healthCheckArn)
    + block.withShieldProtectionId(shieldProtectionId)
  ),
  withHealthCheckArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_arn" expected to be of type "string"';
    {
      health_check_arn: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withShieldProtectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"shield_protection_id" expected to be of type "string"';
    {
      shield_protection_id: converted,
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
