{
  local block = self,
  new(terraformName, instanceArn, principalId, principalType):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_principal_application_assignments",
          type:: "data",
          attributes:: ["id", "instance_arn", "principal_id", "principal_type", "region"],
        },
      },
    }
    + block.withInstanceArn(instanceArn)
    + block.withPrincipalId(principalId)
    + block.withPrincipalType(principalType)
  ),
  withInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
    }
  ),
  withPrincipalId(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_id" expected to be of type "string"';
    {
      principal_id: converted,
    }
  ),
  withPrincipalType(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_type" expected to be of type "string"';
    {
      principal_type: converted,
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
  application_assignments:: {
    local block = self,
    new():: (
      {}
    ),
  },
  withApplicationAssignments(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_assignments: value,
    }
  ),
  withApplicationAssignmentsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_assignments+: converted,
    }
  ),
}
