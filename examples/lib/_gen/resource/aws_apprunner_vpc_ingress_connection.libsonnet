{
  local block = self,
  new(terraformName, name, serviceArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_apprunner_vpc_ingress_connection",
          type:: "resource",
          attributes:: ["arn", "domain_name", "id", "name", "region", "service_arn", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withServiceArn(serviceArn)
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
  "#withRegion":: "Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).",
  withRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  withServiceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_arn" expected to be of type "string"';
    {
      service_arn: converted,
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
  ingress_vpc_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    withVpcEndpointId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
      {
        vpc_endpoint_id: converted,
      }
    ),
    withVpcId(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  withIngressVpcConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ingress_vpc_configuration: value,
    }
  ),
  withIngressVpcConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ingress_vpc_configuration+: converted,
    }
  ),
}
