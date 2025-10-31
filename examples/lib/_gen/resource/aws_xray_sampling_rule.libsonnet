{
  local block = self,
  new(terraformName, fixedRate, host, httpMethod, priority, reservoirSize, resourceArn, serviceName, serviceType, urlPath, version):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_xray_sampling_rule",
          type:: "resource",
          attributes:: ["arn", "attributes", "fixed_rate", "host", "http_method", "id", "priority", "region", "reservoir_size", "resource_arn", "rule_name", "service_name", "service_type", "tags", "tags_all", "url_path", "version"],
        },
      },
    }
    + block.withFixedRate(fixedRate)
    + block.withHost(host)
    + block.withHttpMethod(httpMethod)
    + block.withPriority(priority)
    + block.withReservoirSize(reservoirSize)
    + block.withResourceArn(resourceArn)
    + block.withServiceName(serviceName)
    + block.withServiceType(serviceType)
    + block.withUrlPath(urlPath)
    + block.withVersion(version)
  ),
  withAttributes(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attributes" expected to be of type "map"';
    {
      attributes: converted,
    }
  ),
  withFixedRate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fixed_rate" expected to be of type "number"';
    {
      fixed_rate: converted,
    }
  ),
  withHost(value):: (
    local converted = value;
    assert std.isString(converted) : '"host" expected to be of type "string"';
    {
      host: converted,
    }
  ),
  withHttpMethod(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_method" expected to be of type "string"';
    {
      http_method: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  withReservoirSize(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"reservoir_size" expected to be of type "number"';
    {
      reservoir_size: converted,
    }
  ),
  withResourceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  withRuleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
    }
  ),
  withServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  withServiceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_type" expected to be of type "string"';
    {
      service_type: converted,
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
  withUrlPath(value):: (
    local converted = value;
    assert std.isString(converted) : '"url_path" expected to be of type "string"';
    {
      url_path: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
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
