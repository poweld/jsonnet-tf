{
  local block = self,
  new(terraformName, clientIdList, url):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_iam_openid_connect_provider",
          type:: "resource",
          attributes:: ["arn", "client_id_list", "id", "tags", "tags_all", "thumbprint_list", "url"],
        },
      },
    }
    + block.withClientIdList(clientIdList)
    + block.withUrl(url)
  ),
  withClientIdList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_id_list" expected to be of type "set"';
    {
      client_id_list: converted,
    }
  ),
  withClientIdListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_id_list" expected to be of type "set"';
    {
      client_id_list+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  withThumbprintList(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"thumbprint_list" expected to be of type "list"';
    {
      thumbprint_list: converted,
    }
  ),
  withThumbprintListMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"thumbprint_list" expected to be of type "list"';
    {
      thumbprint_list+: converted,
    }
  ),
  withUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
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
