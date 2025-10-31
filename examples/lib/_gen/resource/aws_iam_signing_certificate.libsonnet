{
  local block = self,
  new(terraformName, certificateBody, userName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_signing_certificate",
          type:: "resource",
          attributes:: ["certificate_body", "certificate_id", "id", "status", "user_name"],
        },
      },
    }
    + block.withCertificateBody(certificateBody)
    + block.withUserName(userName)
  ),
  withCertificateBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_body" expected to be of type "string"';
    {
      certificate_body: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
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
