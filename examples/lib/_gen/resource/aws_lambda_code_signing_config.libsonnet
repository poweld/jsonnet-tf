{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lambda_code_signing_config",
          type:: "resource",
          attributes:: ["arn", "config_id", "description", "id", "last_modified", "region", "tags", "tags_all"],
        },
      },
    }
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
  allowed_publishers:: {
    local block = self,
    new(signingProfileVersionArns):: (
      {}
      + block.withSigningProfileVersionArns(signingProfileVersionArns)
    ),
    withSigningProfileVersionArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"signing_profile_version_arns" expected to be of type "set"';
      {
        signing_profile_version_arns: converted,
      }
    ),
    withSigningProfileVersionArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"signing_profile_version_arns" expected to be of type "set"';
      {
        signing_profile_version_arns+: converted,
      }
    ),
  },
  policies:: {
    local block = self,
    new(untrustedArtifactOnDeployment):: (
      {}
      + block.withUntrustedArtifactOnDeployment(untrustedArtifactOnDeployment)
    ),
    withUntrustedArtifactOnDeployment(value):: (
      local converted = value;
      assert std.isString(converted) : '"untrusted_artifact_on_deployment" expected to be of type "string"';
      {
        untrusted_artifact_on_deployment: converted,
      }
    ),
  },
  withAllowedPublishers(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      allowed_publishers: value,
    }
  ),
  withPolicies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policies: value,
    }
  ),
  withAllowedPublishersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      allowed_publishers+: converted,
    }
  ),
  withPoliciesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      policies+: converted,
    }
  ),
}
