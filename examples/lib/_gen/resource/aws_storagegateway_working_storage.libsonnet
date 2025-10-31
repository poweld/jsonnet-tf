{
  local block = self,
  new(terraformName, diskId, gatewayArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_working_storage",
          type:: "resource",
          attributes:: ["disk_id", "gateway_arn", "id", "region"],
        },
      },
    }
    + block.withDiskId(diskId)
    + block.withGatewayArn(gatewayArn)
  ),
  withDiskId(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_id" expected to be of type "string"';
    {
      disk_id: converted,
    }
  ),
  withGatewayArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_arn" expected to be of type "string"';
    {
      gateway_arn: converted,
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
}
