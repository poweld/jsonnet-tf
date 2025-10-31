{
  local block = self,
  new(terraformName, queueUrl, redrivePolicy):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sqs_queue_redrive_policy",
          type:: "resource",
          attributes:: ["id", "queue_url", "redrive_policy", "region"],
        },
      },
    }
    + block.withQueueUrl(queueUrl)
    + block.withRedrivePolicy(redrivePolicy)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withQueueUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"queue_url" expected to be of type "string"';
    {
      queue_url: converted,
    }
  ),
  withRedrivePolicy(value):: (
    local converted = value;
    assert std.isString(converted) : '"redrive_policy" expected to be of type "string"';
    {
      redrive_policy: converted,
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
