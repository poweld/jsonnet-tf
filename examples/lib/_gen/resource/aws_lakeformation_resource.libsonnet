{
  local block = self,
  new(terraformName, arn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lakeformation_resource",
          type:: "resource",
          attributes:: ["arn", "hybrid_access_enabled", "id", "last_modified", "region", "role_arn", "use_service_linked_role", "with_federation", "with_privileged_access"],
        },
      },
    }
    + block.withArn(arn)
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withHybridAccessEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hybrid_access_enabled" expected to be of type "bool"';
    {
      hybrid_access_enabled: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  withUseServiceLinkedRole(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"use_service_linked_role" expected to be of type "bool"';
    {
      use_service_linked_role: converted,
    }
  ),
  withWithFederation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"with_federation" expected to be of type "bool"';
    {
      with_federation: converted,
    }
  ),
  withWithPrivilegedAccess(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"with_privileged_access" expected to be of type "bool"';
    {
      with_privileged_access: converted,
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
