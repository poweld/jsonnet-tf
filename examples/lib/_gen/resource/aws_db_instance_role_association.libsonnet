{
  local block = self,
  new(terraformName, dbInstanceIdentifier, featureName, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_db_instance_role_association",
          type:: "resource",
          attributes:: ["db_instance_identifier", "feature_name", "id", "region", "role_arn"],
        },
      },
    }
    + block.withDbInstanceIdentifier(dbInstanceIdentifier)
    + block.withFeatureName(featureName)
    + block.withRoleArn(roleArn)
  ),
  withDbInstanceIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_identifier" expected to be of type "string"';
    {
      db_instance_identifier: converted,
    }
  ),
  withFeatureName(value):: (
    local converted = value;
    assert std.isString(converted) : '"feature_name" expected to be of type "string"';
    {
      feature_name: converted,
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
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
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
