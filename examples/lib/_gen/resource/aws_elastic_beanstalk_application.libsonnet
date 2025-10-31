{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_elastic_beanstalk_application",
          type:: "resource",
          attributes:: ["arn", "description", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  appversion_lifecycle:: {
    local block = self,
    new(serviceRole):: (
      {}
      + block.withServiceRole(serviceRole)
    ),
    withDeleteSourceFromS3(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"delete_source_from_s3" expected to be of type "bool"';
      {
        delete_source_from_s3: converted,
      }
    ),
    withMaxAgeInDays(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age_in_days" expected to be of type "number"';
      {
        max_age_in_days: converted,
      }
    ),
    withMaxCount(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_count" expected to be of type "number"';
      {
        max_count: converted,
      }
    ),
    withServiceRole(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_role" expected to be of type "string"';
      {
        service_role: converted,
      }
    ),
  },
  withAppversionLifecycle(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appversion_lifecycle: value,
    }
  ),
  withAppversionLifecycleMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appversion_lifecycle+: converted,
    }
  ),
}
