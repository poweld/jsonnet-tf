{
  local block = self,
  new(terraformName, instanceArn, permissionSetArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_ssoadmin_customer_managed_policy_attachment",
          type:: "resource",
          attributes:: ["id", "instance_arn", "permission_set_arn", "region"],
        },
      },
    }
    + block.withInstanceArn(instanceArn)
    + block.withPermissionSetArn(permissionSetArn)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
    }
  ),
  withPermissionSetArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission_set_arn" expected to be of type "string"';
    {
      permission_set_arn: converted,
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
  customer_managed_policy_reference:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withPath(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
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
  withCustomerManagedPolicyReference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      customer_managed_policy_reference: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withCustomerManagedPolicyReferenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      customer_managed_policy_reference+: converted,
    }
  ),
}
