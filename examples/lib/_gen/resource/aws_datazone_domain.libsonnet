{
  local block = self,
  new(terraformName, domainExecutionRole, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_datazone_domain",
          type:: "resource",
          attributes:: ["arn", "description", "domain_execution_role", "domain_version", "id", "kms_key_identifier", "name", "portal_url", "region", "service_role", "skip_deletion_check", "tags", "tags_all"],
        },
      },
    }
    + block.withDomainExecutionRole(domainExecutionRole)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withDomainExecutionRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_execution_role" expected to be of type "string"';
    {
      domain_execution_role: converted,
    }
  ),
  withDomainVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_version" expected to be of type "string"';
    {
      domain_version: converted,
    }
  ),
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
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
  withServiceRole(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role" expected to be of type "string"';
    {
      service_role: converted,
    }
  ),
  withSkipDeletionCheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_deletion_check" expected to be of type "bool"';
    {
      skip_deletion_check: converted,
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
  single_sign_on:: {
    local block = self,
    new():: (
      {}
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    withUserAssignment(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_assignment" expected to be of type "string"';
      {
        user_assignment: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  withSingleSignOn(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      single_sign_on: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withSingleSignOnMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      single_sign_on+: converted,
    }
  ),
}
