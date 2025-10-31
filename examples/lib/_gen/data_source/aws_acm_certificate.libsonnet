{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_acm_certificate",
          type:: "data",
          attributes:: ["arn", "certificate", "certificate_chain", "domain", "id", "key_types", "most_recent", "region", "status", "statuses", "tags", "types"],
        },
      },
    }
  ),
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withKeyTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_types" expected to be of type "set"';
    {
      key_types: converted,
    }
  ),
  withKeyTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"key_types" expected to be of type "set"';
    {
      key_types+: converted,
    }
  ),
  withMostRecent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
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
  withStatuses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"statuses" expected to be of type "list"';
    {
      statuses: converted,
    }
  ),
  withStatusesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"statuses" expected to be of type "list"';
    {
      statuses+: converted,
    }
  ),
  withTags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  withTypes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"types" expected to be of type "list"';
    {
      types: converted,
    }
  ),
  withTypesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"types" expected to be of type "list"';
    {
      types+: converted,
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
