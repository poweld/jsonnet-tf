{
  local block = self,
  new(terraformName, iamRoleArn, locationScope):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3control_access_grants_location",
          type:: "resource",
          attributes:: ["access_grants_location_arn", "access_grants_location_id", "account_id", "iam_role_arn", "id", "location_scope", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withIamRoleArn(iamRoleArn)
    + block.withLocationScope(locationScope)
  ),
  withAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  withIamRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  withLocationScope(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_scope" expected to be of type "string"';
    {
      location_scope: converted,
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
}
