{
  local block = self,
  new(terraformName, dashboardBody, dashboardName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cloudwatch_dashboard",
          type:: "resource",
          attributes:: ["dashboard_arn", "dashboard_body", "dashboard_name", "id", "region"],
        },
      },
    }
    + block.withDashboardBody(dashboardBody)
    + block.withDashboardName(dashboardName)
  ),
  withDashboardBody(value):: (
    local converted = value;
    assert std.isString(converted) : '"dashboard_body" expected to be of type "string"';
    {
      dashboard_body: converted,
    }
  ),
  withDashboardName(value):: (
    local converted = value;
    assert std.isString(converted) : '"dashboard_name" expected to be of type "string"';
    {
      dashboard_name: converted,
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
}
