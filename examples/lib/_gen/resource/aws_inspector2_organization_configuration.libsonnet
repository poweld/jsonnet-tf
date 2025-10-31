{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_inspector2_organization_configuration",
          type:: "resource",
          attributes:: ["id", "max_account_limit_reached", "region"],
        },
      },
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  auto_enable:: {
    local block = self,
    new(ec2, ecr):: (
      {}
      + block.withEc2(ec2)
      + block.withEcr(ecr)
    ),
    withCodeRepository(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"code_repository" expected to be of type "bool"';
      {
        code_repository: converted,
      }
    ),
    withEc2(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ec2" expected to be of type "bool"';
      {
        ec2: converted,
      }
    ),
    withEcr(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ecr" expected to be of type "bool"';
      {
        ecr: converted,
      }
    ),
    withLambda(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"lambda" expected to be of type "bool"';
      {
        lambda: converted,
      }
    ),
    withLambdaCode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"lambda_code" expected to be of type "bool"';
      {
        lambda_code: converted,
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
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withAutoEnable(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_enable: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAutoEnableMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_enable+: converted,
    }
  ),
}
