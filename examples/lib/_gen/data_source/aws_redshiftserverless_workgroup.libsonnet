{
  local block = self,
  new(terraformName, workgroupName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_redshiftserverless_workgroup",
          type:: "data",
          attributes:: ["arn", "endpoint", "enhanced_vpc_routing", "id", "namespace_name", "publicly_accessible", "region", "security_group_ids", "subnet_ids", "track_name", "workgroup_id", "workgroup_name"],
        },
      },
    }
    + block.withWorkgroupName(workgroupName)
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
  withWorkgroupName(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_name" expected to be of type "string"';
    {
      workgroup_name: converted,
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
