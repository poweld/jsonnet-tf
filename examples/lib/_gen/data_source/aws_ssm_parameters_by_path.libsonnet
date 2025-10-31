{
  local block = self,
  new(terraformName, path):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_parameters_by_path",
          type:: "data",
          attributes:: ["arns", "id", "names", "path", "recursive", "region", "types", "values", "with_decryption"],
        },
      },
    }
    + block.withPath(path)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  withRecursive(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"recursive" expected to be of type "bool"';
    {
      recursive: converted,
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
  withWithDecryption(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"with_decryption" expected to be of type "bool"';
    {
      with_decryption: converted,
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
