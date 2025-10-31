{
  local block = self,
  new(terraformName, gatewayArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_storagegateway_upload_buffer",
          type:: "resource",
          attributes:: ["disk_id", "disk_path", "gateway_arn", "id", "region"],
        },
      },
    }
    + block.withGatewayArn(gatewayArn)
  ),
  withDiskId(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_id" expected to be of type "string"';
    {
      disk_id: converted,
    }
  ),
  withDiskPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"disk_path" expected to be of type "string"';
    {
      disk_path: converted,
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
