{
  local block = self,
  new(terraformName, action, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_inspector2_filter",
          type:: "resource",
          attributes:: ["action", "arn", "description", "name", "reason", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withAction(action)
    + block.withName(name)
  ),
  withAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"action" expected to be of type "string"';
    {
      action: converted,
    }
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withReason(value):: (
    local converted = value;
    assert std.isString(converted) : '"reason" expected to be of type "string"';
    {
      reason: converted,
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
  filter_criteria:: {
    local block = self,
    new():: (
      {}
    ),
    aws_account_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    code_repository_project_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    code_repository_provider_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    code_vulnerability_detector_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    code_vulnerability_detector_tags:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    code_vulnerability_file_path:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    component_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    component_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ec2_instance_image_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ec2_instance_subnet_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ec2_instance_vpc_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ecr_image_architecture:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ecr_image_hash:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ecr_image_in_use_count:: {
      local block = self,
      new(lowerInclusive, upperInclusive):: (
        {}
        + block.withLowerInclusive(lowerInclusive)
        + block.withUpperInclusive(upperInclusive)
      ),
      withLowerInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lower_inclusive" expected to be of type "number"';
        {
          lower_inclusive: converted,
        }
      ),
      withUpperInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"upper_inclusive" expected to be of type "number"';
        {
          upper_inclusive: converted,
        }
      ),
    },
    ecr_image_last_in_use_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEndInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      withStartInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    ecr_image_pushed_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEndInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      withStartInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    ecr_image_registry:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ecr_image_repository_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    ecr_image_tags:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    epss_score:: {
      local block = self,
      new(lowerInclusive, upperInclusive):: (
        {}
        + block.withLowerInclusive(lowerInclusive)
        + block.withUpperInclusive(upperInclusive)
      ),
      withLowerInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lower_inclusive" expected to be of type "number"';
        {
          lower_inclusive: converted,
        }
      ),
      withUpperInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"upper_inclusive" expected to be of type "number"';
        {
          upper_inclusive: converted,
        }
      ),
    },
    exploit_available:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_status:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    finding_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    first_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEndInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      withStartInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    fix_available:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    inspector_score:: {
      local block = self,
      new(lowerInclusive, upperInclusive):: (
        {}
        + block.withLowerInclusive(lowerInclusive)
        + block.withUpperInclusive(upperInclusive)
      ),
      withLowerInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lower_inclusive" expected to be of type "number"';
        {
          lower_inclusive: converted,
        }
      ),
      withUpperInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"upper_inclusive" expected to be of type "number"';
        {
          upper_inclusive: converted,
        }
      ),
    },
    lambda_function_execution_role_arn:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    lambda_function_last_modified_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEndInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      withStartInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    lambda_function_layers:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    lambda_function_name:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    lambda_function_runtime:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    last_observed_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEndInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      withStartInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    network_protocol:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    port_range:: {
      local block = self,
      new(beginInclusive, endInclusive):: (
        {}
        + block.withBeginInclusive(beginInclusive)
        + block.withEndInclusive(endInclusive)
      ),
      withBeginInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"begin_inclusive" expected to be of type "number"';
        {
          begin_inclusive: converted,
        }
      ),
      withEndInclusive(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"end_inclusive" expected to be of type "number"';
        {
          end_inclusive: converted,
        }
      ),
    },
    related_vulnerabilities:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    resource_tags:: {
      local block = self,
      new(comparison, key, value):: (
        {}
        + block.withComparison(comparison)
        + block.withKey(key)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
        }
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    resource_type:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    severity:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    title:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    updated_at:: {
      local block = self,
      new():: (
        {}
      ),
      withEndInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"end_inclusive" expected to be of type "string"';
        {
          end_inclusive: converted,
        }
      ),
      withStartInclusive(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_inclusive" expected to be of type "string"';
        {
          start_inclusive: converted,
        }
      ),
    },
    vendor_severity:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    vulnerability_id:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    vulnerability_source:: {
      local block = self,
      new(comparison, value):: (
        {}
        + block.withComparison(comparison)
        + block.withValue(value)
      ),
      withComparison(value):: (
        local converted = value;
        assert std.isString(converted) : '"comparison" expected to be of type "string"';
        {
          comparison: converted,
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
    vulnerable_packages:: {
      local block = self,
      new():: (
        {}
      ),
      architecture:: {
        local block = self,
        new(comparison, value):: (
          {}
          + block.withComparison(comparison)
          + block.withValue(value)
        ),
        withComparison(value):: (
          local converted = value;
          assert std.isString(converted) : '"comparison" expected to be of type "string"';
          {
            comparison: converted,
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
      epoch:: {
        local block = self,
        new(lowerInclusive, upperInclusive):: (
          {}
          + block.withLowerInclusive(lowerInclusive)
          + block.withUpperInclusive(upperInclusive)
        ),
        withLowerInclusive(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"lower_inclusive" expected to be of type "number"';
          {
            lower_inclusive: converted,
          }
        ),
        withUpperInclusive(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"upper_inclusive" expected to be of type "number"';
          {
            upper_inclusive: converted,
          }
        ),
      },
      file_path:: {
        local block = self,
        new(comparison, value):: (
          {}
          + block.withComparison(comparison)
          + block.withValue(value)
        ),
        withComparison(value):: (
          local converted = value;
          assert std.isString(converted) : '"comparison" expected to be of type "string"';
          {
            comparison: converted,
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
      name:: {
        local block = self,
        new(comparison, value):: (
          {}
          + block.withComparison(comparison)
          + block.withValue(value)
        ),
        withComparison(value):: (
          local converted = value;
          assert std.isString(converted) : '"comparison" expected to be of type "string"';
          {
            comparison: converted,
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
      release:: {
        local block = self,
        new(comparison, value):: (
          {}
          + block.withComparison(comparison)
          + block.withValue(value)
        ),
        withComparison(value):: (
          local converted = value;
          assert std.isString(converted) : '"comparison" expected to be of type "string"';
          {
            comparison: converted,
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
      source_lambda_layer_arn:: {
        local block = self,
        new(comparison, value):: (
          {}
          + block.withComparison(comparison)
          + block.withValue(value)
        ),
        withComparison(value):: (
          local converted = value;
          assert std.isString(converted) : '"comparison" expected to be of type "string"';
          {
            comparison: converted,
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
      source_layer_hash:: {
        local block = self,
        new(comparison, value):: (
          {}
          + block.withComparison(comparison)
          + block.withValue(value)
        ),
        withComparison(value):: (
          local converted = value;
          assert std.isString(converted) : '"comparison" expected to be of type "string"';
          {
            comparison: converted,
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
      version:: {
        local block = self,
        new(comparison, value):: (
          {}
          + block.withComparison(comparison)
          + block.withValue(value)
        ),
        withComparison(value):: (
          local converted = value;
          assert std.isString(converted) : '"comparison" expected to be of type "string"';
          {
            comparison: converted,
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
      withArchitecture(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          architecture: value,
        }
      ),
      withEpoch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          epoch: value,
        }
      ),
      withFilePath(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          file_path: value,
        }
      ),
      withName(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          name: value,
        }
      ),
      withRelease(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          release: value,
        }
      ),
      withSourceLambdaLayerArn(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_lambda_layer_arn: value,
        }
      ),
      withSourceLayerHash(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_layer_hash: value,
        }
      ),
      withVersion(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          version: value,
        }
      ),
      withArchitectureMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          architecture+: converted,
        }
      ),
      withEpochMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          epoch+: converted,
        }
      ),
      withFilePathMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          file_path+: converted,
        }
      ),
      withNameMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          name+: converted,
        }
      ),
      withReleaseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          release+: converted,
        }
      ),
      withSourceLambdaLayerArnMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_lambda_layer_arn+: converted,
        }
      ),
      withSourceLayerHashMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          source_layer_hash+: converted,
        }
      ),
      withVersionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          version+: converted,
        }
      ),
    },
    withAwsAccountId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id: value,
      }
    ),
    withCodeRepositoryProjectName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository_project_name: value,
      }
    ),
    withCodeRepositoryProviderType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository_provider_type: value,
      }
    ),
    withCodeVulnerabilityDetectorName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_name: value,
      }
    ),
    withCodeVulnerabilityDetectorTags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_tags: value,
      }
    ),
    withCodeVulnerabilityFilePath(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_file_path: value,
      }
    ),
    withComponentId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_id: value,
      }
    ),
    withComponentType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_type: value,
      }
    ),
    withEc2InstanceImageId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_image_id: value,
      }
    ),
    withEc2InstanceSubnetId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_subnet_id: value,
      }
    ),
    withEc2InstanceVpcId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_vpc_id: value,
      }
    ),
    withEcrImageArchitecture(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_architecture: value,
      }
    ),
    withEcrImageHash(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_hash: value,
      }
    ),
    withEcrImageInUseCount(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_in_use_count: value,
      }
    ),
    withEcrImageLastInUseAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_last_in_use_at: value,
      }
    ),
    withEcrImagePushedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_pushed_at: value,
      }
    ),
    withEcrImageRegistry(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_registry: value,
      }
    ),
    withEcrImageRepositoryName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_repository_name: value,
      }
    ),
    withEcrImageTags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_tags: value,
      }
    ),
    withEpssScore(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        epss_score: value,
      }
    ),
    withExploitAvailable(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exploit_available: value,
      }
    ),
    withFindingArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_arn: value,
      }
    ),
    withFindingStatus(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_status: value,
      }
    ),
    withFindingType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_type: value,
      }
    ),
    withFirstObservedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at: value,
      }
    ),
    withFixAvailable(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fix_available: value,
      }
    ),
    withInspectorScore(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inspector_score: value,
      }
    ),
    withLambdaFunctionExecutionRoleArn(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_execution_role_arn: value,
      }
    ),
    withLambdaFunctionLastModifiedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_last_modified_at: value,
      }
    ),
    withLambdaFunctionLayers(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_layers: value,
      }
    ),
    withLambdaFunctionName(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_name: value,
      }
    ),
    withLambdaFunctionRuntime(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_runtime: value,
      }
    ),
    withLastObservedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at: value,
      }
    ),
    withNetworkProtocol(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol: value,
      }
    ),
    withPortRange(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range: value,
      }
    ),
    withRelatedVulnerabilities(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_vulnerabilities: value,
      }
    ),
    withResourceId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id: value,
      }
    ),
    withResourceTags(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tags: value,
      }
    ),
    withResourceType(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_type: value,
      }
    ),
    withSeverity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity: value,
      }
    ),
    withTitle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title: value,
      }
    ),
    withUpdatedAt(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at: value,
      }
    ),
    withVendorSeverity(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vendor_severity: value,
      }
    ),
    withVulnerabilityId(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_id: value,
      }
    ),
    withVulnerabilitySource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_source: value,
      }
    ),
    withVulnerablePackages(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerable_packages: value,
      }
    ),
    withAwsAccountIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_account_id+: converted,
      }
    ),
    withCodeRepositoryProjectNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository_project_name+: converted,
      }
    ),
    withCodeRepositoryProviderTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_repository_provider_type+: converted,
      }
    ),
    withCodeVulnerabilityDetectorNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_name+: converted,
      }
    ),
    withCodeVulnerabilityDetectorTagsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_detector_tags+: converted,
      }
    ),
    withCodeVulnerabilityFilePathMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        code_vulnerability_file_path+: converted,
      }
    ),
    withComponentIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_id+: converted,
      }
    ),
    withComponentTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        component_type+: converted,
      }
    ),
    withEc2InstanceImageIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_image_id+: converted,
      }
    ),
    withEc2InstanceSubnetIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_subnet_id+: converted,
      }
    ),
    withEc2InstanceVpcIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_instance_vpc_id+: converted,
      }
    ),
    withEcrImageArchitectureMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_architecture+: converted,
      }
    ),
    withEcrImageHashMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_hash+: converted,
      }
    ),
    withEcrImageInUseCountMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_in_use_count+: converted,
      }
    ),
    withEcrImageLastInUseAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_last_in_use_at+: converted,
      }
    ),
    withEcrImagePushedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_pushed_at+: converted,
      }
    ),
    withEcrImageRegistryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_registry+: converted,
      }
    ),
    withEcrImageRepositoryNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_repository_name+: converted,
      }
    ),
    withEcrImageTagsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_tags+: converted,
      }
    ),
    withEpssScoreMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        epss_score+: converted,
      }
    ),
    withExploitAvailableMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        exploit_available+: converted,
      }
    ),
    withFindingArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_arn+: converted,
      }
    ),
    withFindingStatusMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_status+: converted,
      }
    ),
    withFindingTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        finding_type+: converted,
      }
    ),
    withFirstObservedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        first_observed_at+: converted,
      }
    ),
    withFixAvailableMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fix_available+: converted,
      }
    ),
    withInspectorScoreMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        inspector_score+: converted,
      }
    ),
    withLambdaFunctionExecutionRoleArnMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_execution_role_arn+: converted,
      }
    ),
    withLambdaFunctionLastModifiedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_last_modified_at+: converted,
      }
    ),
    withLambdaFunctionLayersMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_layers+: converted,
      }
    ),
    withLambdaFunctionNameMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_name+: converted,
      }
    ),
    withLambdaFunctionRuntimeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_function_runtime+: converted,
      }
    ),
    withLastObservedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        last_observed_at+: converted,
      }
    ),
    withNetworkProtocolMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        network_protocol+: converted,
      }
    ),
    withPortRangeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        port_range+: converted,
      }
    ),
    withRelatedVulnerabilitiesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        related_vulnerabilities+: converted,
      }
    ),
    withResourceIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_id+: converted,
      }
    ),
    withResourceTagsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tags+: converted,
      }
    ),
    withResourceTypeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_type+: converted,
      }
    ),
    withSeverityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        severity+: converted,
      }
    ),
    withTitleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        title+: converted,
      }
    ),
    withUpdatedAtMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        updated_at+: converted,
      }
    ),
    withVendorSeverityMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vendor_severity+: converted,
      }
    ),
    withVulnerabilityIdMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_id+: converted,
      }
    ),
    withVulnerabilitySourceMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerability_source+: converted,
      }
    ),
    withVulnerablePackagesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        vulnerable_packages+: converted,
      }
    ),
  },
  withFilterCriteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria: value,
    }
  ),
  withFilterCriteriaMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter_criteria+: converted,
    }
  ),
}
