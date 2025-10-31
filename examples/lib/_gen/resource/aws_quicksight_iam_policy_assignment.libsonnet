{
  local block = self,
  new(terraformName, assignmentName, assignmentStatus):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_iam_policy_assignment",
          type:: "resource",
          attributes:: ["assignment_id", "assignment_name", "assignment_status", "aws_account_id", "id", "namespace", "policy_arn", "region"],
        },
      },
    }
    + block.withAssignmentName(assignmentName)
    + block.withAssignmentStatus(assignmentStatus)
  ),
  withAssignmentName(value):: (
    local converted = value;
    assert std.isString(converted) : '"assignment_name" expected to be of type "string"';
    {
      assignment_name: converted,
    }
  ),
  withAssignmentStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"assignment_status" expected to be of type "string"';
    {
      assignment_status: converted,
    }
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
    }
  ),
  withPolicyArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_arn" expected to be of type "string"';
    {
      policy_arn: converted,
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
  identities:: {
    local block = self,
    new():: (
      {}
    ),
    withGroup(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group" expected to be of type "set"';
      {
        group: converted,
      }
    ),
    withGroupMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group" expected to be of type "set"';
      {
        group+: converted,
      }
    ),
    withUser(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user" expected to be of type "set"';
      {
        user: converted,
      }
    ),
    withUserMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user" expected to be of type "set"';
      {
        user+: converted,
      }
    ),
  },
  withIdentities(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identities: value,
    }
  ),
  withIdentitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      identities+: converted,
    }
  ),
}
