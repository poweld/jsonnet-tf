{
  local block = self,
  new(terraformName, releaseLabel):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_emr_supported_instance_types",
          type:: "data",
          attributes:: ["id", "region", "release_label", "supported_instance_types"],
        },
      },
    }
    + block.withReleaseLabel(releaseLabel)
  ),
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withReleaseLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_label" expected to be of type "string"';
    {
      release_label: converted,
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
