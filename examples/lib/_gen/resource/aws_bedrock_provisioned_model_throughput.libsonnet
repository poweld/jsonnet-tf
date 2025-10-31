{
  local block = self,
  new(terraformName, modelArn, modelUnits, provisionedModelName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_bedrock_provisioned_model_throughput",
          type:: "resource",
          attributes:: ["commitment_duration", "id", "model_arn", "model_units", "provisioned_model_arn", "provisioned_model_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withModelArn(modelArn)
    + block.withModelUnits(modelUnits)
    + block.withProvisionedModelName(provisionedModelName)
  ),
  withCommitmentDuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"commitment_duration" expected to be of type "string"';
    {
      commitment_duration: converted,
    }
  ),
  withModelArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_arn" expected to be of type "string"';
    {
      model_arn: converted,
    }
  ),
  withModelUnits(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"model_units" expected to be of type "number"';
    {
      model_units: converted,
    }
  ),
  withProvisionedModelName(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioned_model_name" expected to be of type "string"';
    {
      provisioned_model_name: converted,
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
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
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
