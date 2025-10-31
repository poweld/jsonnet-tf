{
  local block = self,
  new(terraformName, allowedOperations, licenseArn, name, principal):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_licensemanager_grant",
          type:: "resource",
          attributes:: ["allowed_operations", "arn", "home_region", "id", "license_arn", "name", "parent_arn", "principal", "region", "status", "version"],
        },
      },
    }
    + block.withAllowedOperations(allowedOperations)
    + block.withLicenseArn(licenseArn)
    + block.withName(name)
    + block.withPrincipal(principal)
  ),
  "#withAllowedOperations":: "Allowed operations for the grant. This is a subset of the allowed operations on the license.",
  withAllowedOperations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_operations" expected to be of type "set"';
    {
      allowed_operations: converted,
    }
  ),
  "#withAllowedOperationsMixin":: "Allowed operations for the grant. This is a subset of the allowed operations on the license.",
  withAllowedOperationsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_operations" expected to be of type "set"';
    {
      allowed_operations+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withLicenseArn":: "License ARN.",
  withLicenseArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_arn" expected to be of type "string"';
    {
      license_arn: converted,
    }
  ),
  "#withName":: "Name of the grant.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPrincipal":: "The grantee principal ARN. The target account for the grant in the form of the ARN for an account principal of the root user.",
  withPrincipal(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal" expected to be of type "string"';
    {
      principal: converted,
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
}
