{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ec2_instance_metadata_defaults",
          type:: "resource",
          attributes:: ["http_endpoint", "http_put_response_hop_limit", "http_tokens", "id", "instance_metadata_tags", "region"],
        },
      },
    }
  ),
  withHttpEndpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_endpoint" expected to be of type "string"';
    {
      http_endpoint: converted,
    }
  ),
  withHttpPutResponseHopLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"http_put_response_hop_limit" expected to be of type "number"';
    {
      http_put_response_hop_limit: converted,
    }
  ),
  withHttpTokens(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_tokens" expected to be of type "string"';
    {
      http_tokens: converted,
    }
  ),
  withInstanceMetadataTags(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_metadata_tags" expected to be of type "string"';
    {
      instance_metadata_tags: converted,
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
