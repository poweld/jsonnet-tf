{
  local block = self,
  new(terraformName, certificateBody, privateKey):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_server_certificate",
          type:: "resource",
          attributes:: ["arn", "certificate_body", "certificate_chain", "expiration", "id", "name", "name_prefix", "path", "private_key", "tags", "tags_all", "upload_date"],
        },
      },
    }
    + block.withCertificateBody(certificateBody)
    + block.withPrivateKey(privateKey)
  ),
  withCertificateBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_body" expected to be of type "string"';
    {
      certificate_body: converted,
    }
  ),
  withCertificateChain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  withPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  withPrivateKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
