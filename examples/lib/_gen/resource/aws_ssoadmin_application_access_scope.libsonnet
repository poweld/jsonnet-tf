{
  local block = self,
  new(terraformName, applicationArn, scope):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_application_access_scope",
          type:: "resource",
          attributes:: ["application_arn", "authorized_targets", "id", "region", "scope"],
        },
      },
    }
    + block.withApplicationArn(applicationArn)
    + block.withScope(scope)
  ),
  withApplicationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"application_arn" expected to be of type "string"';
    {
      application_arn: converted,
    }
  ),
  withAuthorizedTargets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_targets" expected to be of type "list"';
    {
      authorized_targets: converted,
    }
  ),
  withAuthorizedTargetsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"authorized_targets" expected to be of type "list"';
    {
      authorized_targets+: converted,
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
  withScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"scope" expected to be of type "string"';
    {
      scope: converted,
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
