{
  local block = self,
  new(terraformName, frameworkId, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_auditmanager_assessment",
          type:: "resource",
          attributes:: ["arn", "description", "framework_id", "id", "name", "region", "roles_all", "status", "tags", "tags_all"],
        },
      },
    }
    + block.withFrameworkId(frameworkId)
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withFrameworkId(value):: (
    local converted = value;
    assert std.isString(converted) : '"framework_id" expected to be of type "string"';
    {
      framework_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  assessment_reports_destination:: {
    local block = self,
    new(destination, destinationType):: (
      {}
      + block.withDestination(destination)
      + block.withDestinationType(destinationType)
    ),
    withDestination(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination" expected to be of type "string"';
      {
        destination: converted,
      }
    ),
    withDestinationType(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_type" expected to be of type "string"';
      {
        destination_type: converted,
      }
    ),
  },
  roles:: {
    local block = self,
    new(roleArn, roleType):: (
      {}
      + block.withRoleArn(roleArn)
      + block.withRoleType(roleType)
    ),
    withRoleArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    withRoleType(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_type" expected to be of type "string"';
      {
        role_type: converted,
      }
    ),
  },
  scope:: {
    local block = self,
    new():: (
      {}
    ),
    aws_accounts:: {
      local block = self,
      new(id):: (
        {}
        + block.withId(id)
      ),
      withId(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
    },
    aws_services:: {
      local block = self,
      new(serviceName):: (
        {}
        + block.withServiceName(serviceName)
      ),
      withServiceName(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_name" expected to be of type "string"';
        {
          service_name: converted,
        }
      ),
    },
    withAwsAccounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_accounts: value,
      }
    ),
    withAwsServices(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_services: value,
      }
    ),
    withAwsAccountsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_accounts+: converted,
      }
    ),
    withAwsServicesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_services+: converted,
      }
    ),
  },
  withAssessmentReportsDestination(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assessment_reports_destination: value,
    }
  ),
  withRoles(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      roles: value,
    }
  ),
  withScope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  withAssessmentReportsDestinationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      assessment_reports_destination+: converted,
    }
  ),
  withRolesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      roles+: converted,
    }
  ),
  withScopeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
}
