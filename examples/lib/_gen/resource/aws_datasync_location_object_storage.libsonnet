{
  local block = self,
  new(terraformName, bucketName, serverHostname):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datasync_location_object_storage",
          type:: "resource",
          attributes:: ["access_key", "agent_arns", "arn", "bucket_name", "id", "region", "secret_key", "server_certificate", "server_hostname", "server_port", "server_protocol", "subdirectory", "tags", "tags_all", "uri"],
        },
      },
    }
    + block.withBucketName(bucketName)
    + block.withServerHostname(serverHostname)
  ),
  withAccessKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_key" expected to be of type "string"';
    {
      access_key: converted,
    }
  ),
  withAgentArns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns: converted,
    }
  ),
  withAgentArnsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"agent_arns" expected to be of type "set"';
    {
      agent_arns+: converted,
    }
  ),
  withBucketName(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
    {
      bucket_name: converted,
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
  withSecretKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret_key" expected to be of type "string"';
    {
      secret_key: converted,
    }
  ),
  withServerCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_certificate" expected to be of type "string"';
    {
      server_certificate: converted,
    }
  ),
  withServerHostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_hostname" expected to be of type "string"';
    {
      server_hostname: converted,
    }
  ),
  withServerPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"server_port" expected to be of type "number"';
    {
      server_port: converted,
    }
  ),
  withServerProtocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"server_protocol" expected to be of type "string"';
    {
      server_protocol: converted,
    }
  ),
  withSubdirectory(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdirectory" expected to be of type "string"';
    {
      subdirectory: converted,
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
}
