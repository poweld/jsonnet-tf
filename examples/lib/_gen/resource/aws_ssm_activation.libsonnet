{
  local block = self,
  new(terraformName, iamRole):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssm_activation",
          type:: "resource",
          attributes:: ["activation_code", "description", "expiration_date", "expired", "iam_role", "id", "name", "region", "registration_count", "registration_limit", "tags", "tags_all"],
        },
      },
    }
    + block.withIamRole(iamRole)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withExpirationDate(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration_date" expected to be of type "string"';
    {
      expiration_date: converted,
    }
  ),
  withIamRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role" expected to be of type "string"';
    {
      iam_role: converted,
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
  withRegistrationLimit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"registration_limit" expected to be of type "number"';
    {
      registration_limit: converted,
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
