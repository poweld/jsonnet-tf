{
  local block = self,
  new(terraformName, logGroupName, policyDocument):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_log_index_policy",
          type:: "resource",
          attributes:: ["log_group_name", "policy_document", "region"],
        },
      },
    }
    + block.withLogGroupName(logGroupName)
    + block.withPolicyDocument(policyDocument)
  ),
  withLogGroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
    {
      log_group_name: converted,
    }
  ),
  "#withPolicyDocument":: "Field index filter policy, in JSON",
  withPolicyDocument(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_document" expected to be of type "string"';
    {
      policy_document: converted,
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
}
