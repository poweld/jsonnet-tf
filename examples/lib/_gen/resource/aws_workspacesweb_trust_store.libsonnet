{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspacesweb_trust_store",
          type:: "resource",
          attributes:: ["associated_portal_arns", "region", "tags", "tags_all", "trust_store_arn"],
        },
      },
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
  certificate:: {
    local block = self,
    new(body):: (
      {}
      + block.withBody(body)
    ),
    withBody(value):: (
      local converted = value;
      assert std.isString(converted) : '"body" expected to be of type "string"';
      {
        body: converted,
      }
    ),
  },
  withCertificate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate: value,
    }
  ),
  withCertificateMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate+: converted,
    }
  ),
}
