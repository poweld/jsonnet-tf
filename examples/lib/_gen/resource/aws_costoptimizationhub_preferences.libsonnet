{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_costoptimizationhub_preferences",
          type:: "resource",
          attributes:: ["id", "member_account_discount_visibility", "savings_estimation_mode"],
        },
      },
    }
  ),
  withMemberAccountDiscountVisibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_account_discount_visibility" expected to be of type "string"';
    {
      member_account_discount_visibility: converted,
    }
  ),
  withSavingsEstimationMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"savings_estimation_mode" expected to be of type "string"';
    {
      savings_estimation_mode: converted,
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
