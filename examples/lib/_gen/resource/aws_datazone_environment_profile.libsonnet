{
  local block = self,
  new(terraformName, awsAccountRegion, domainIdentifier, environmentBlueprintIdentifier, name, projectIdentifier):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_environment_profile",
          type:: "resource",
          attributes:: ["aws_account_id", "aws_account_region", "created_at", "created_by", "description", "domain_identifier", "environment_blueprint_identifier", "id", "name", "project_identifier", "region", "updated_at"],
        },
      },
    }
    + block.withAwsAccountRegion(awsAccountRegion)
    + block.withDomainIdentifier(domainIdentifier)
    + block.withEnvironmentBlueprintIdentifier(environmentBlueprintIdentifier)
    + block.withName(name)
    + block.withProjectIdentifier(projectIdentifier)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withAwsAccountRegion(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_region" expected to be of type "string"';
    {
      aws_account_region: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDomainIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_identifier" expected to be of type "string"';
    {
      domain_identifier: converted,
    }
  ),
  withEnvironmentBlueprintIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_blueprint_identifier" expected to be of type "string"';
    {
      environment_blueprint_identifier: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withProjectIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_identifier" expected to be of type "string"';
    {
      project_identifier: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  user_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withValue(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  withUserParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters: value,
    }
  ),
  withUserParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_parameters+: converted,
    }
  ),
}
