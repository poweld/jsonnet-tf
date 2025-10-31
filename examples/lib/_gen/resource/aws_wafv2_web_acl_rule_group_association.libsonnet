{
  local block = self,
  new(terraformName, priority, ruleName, webAclArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_wafv2_web_acl_rule_group_association",
          type:: "resource",
          attributes:: ["override_action", "priority", "region", "rule_name", "web_acl_arn"],
        },
      },
    }
    + block.withPriority(priority)
    + block.withRuleName(ruleName)
    + block.withWebAclArn(webAclArn)
  ),
  "#withOverrideAction":: "Override action for the rule group. Valid values are 'none' and 'count'. Defaults to 'none'.",
  withOverrideAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"override_action" expected to be of type "string"';
    {
      override_action: converted,
    }
  ),
  "#withPriority":: "Priority of the rule within the Web ACL.",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  "#withRuleName":: "Name of the rule to create in the Web ACL that references the rule group.",
  withRuleName(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
    }
  ),
  "#withWebAclArn":: "ARN of the Web ACL to associate the Rule Group with.",
  withWebAclArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"web_acl_arn" expected to be of type "string"';
    {
      web_acl_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  managed_rule_group:: {
    local block = self,
    new(name, vendorName):: (
      {}
      + block.withName(name)
      + block.withVendorName(vendorName)
    ),
    "#withName":: "Name of the managed rule group.",
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    "#withVendorName":: "Name of the managed rule group vendor.",
    withVendorName(value):: (
      local converted = value;
      assert std.isString(converted) : '"vendor_name" expected to be of type "string"';
      {
        vendor_name: converted,
      }
    ),
    "#withVersion":: "Version of the managed rule group. Omit this to use the default version.",
    withVersion(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
    rule_action_override:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      "#withName":: "Name of the rule to override.",
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      action_to_use:: {
        local block = self,
        new():: (
          {}
        ),
        allow:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        block:: {
          local block = self,
          new():: (
            {}
          ),
          custom_response:: {
            local block = self,
            new(responseCode):: (
              {}
              + block.withResponseCode(responseCode)
            ),
            withCustomResponseBodyKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"custom_response_body_key" expected to be of type "string"';
              {
                custom_response_body_key: converted,
              }
            ),
            withResponseCode(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"response_code" expected to be of type "number"';
              {
                response_code: converted,
              }
            ),
            response_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withResponseHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response_header: value,
              }
            ),
            withResponseHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response_header+: converted,
              }
            ),
          },
          withCustomResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_response: value,
            }
          ),
          withCustomResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_response+: converted,
            }
          ),
        },
        captcha:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        challenge:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        count:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        withAllow(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allow: value,
          }
        ),
        withBlock(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            block: value,
          }
        ),
        withCaptcha(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            captcha: value,
          }
        ),
        withChallenge(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            challenge: value,
          }
        ),
        withCount(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            count: value,
          }
        ),
        withAllowMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allow+: converted,
          }
        ),
        withBlockMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            block+: converted,
          }
        ),
        withCaptchaMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            captcha+: converted,
          }
        ),
        withChallengeMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            challenge+: converted,
          }
        ),
        withCountMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            count+: converted,
          }
        ),
      },
      withActionToUse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action_to_use: value,
        }
      ),
      withActionToUseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action_to_use+: converted,
        }
      ),
    },
    withRuleActionOverride(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_action_override: value,
      }
    ),
    withRuleActionOverrideMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_action_override+: converted,
      }
    ),
  },
  rule_group_reference:: {
    local block = self,
    new(arn):: (
      {}
      + block.withArn(arn)
    ),
    "#withArn":: "ARN of the Rule Group to associate with the Web ACL.",
    withArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    rule_action_override:: {
      local block = self,
      new(name):: (
        {}
        + block.withName(name)
      ),
      "#withName":: "Name of the rule to override.",
      withName(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      action_to_use:: {
        local block = self,
        new():: (
          {}
        ),
        allow:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        block:: {
          local block = self,
          new():: (
            {}
          ),
          custom_response:: {
            local block = self,
            new(responseCode):: (
              {}
              + block.withResponseCode(responseCode)
            ),
            withCustomResponseBodyKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"custom_response_body_key" expected to be of type "string"';
              {
                custom_response_body_key: converted,
              }
            ),
            withResponseCode(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"response_code" expected to be of type "number"';
              {
                response_code: converted,
              }
            ),
            response_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withResponseHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response_header: value,
              }
            ),
            withResponseHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                response_header+: converted,
              }
            ),
          },
          withCustomResponse(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_response: value,
            }
          ),
          withCustomResponseMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_response+: converted,
            }
          ),
        },
        captcha:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        challenge:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        count:: {
          local block = self,
          new():: (
            {}
          ),
          custom_request_handling:: {
            local block = self,
            new():: (
              {}
            ),
            insert_header:: {
              local block = self,
              new(name, value):: (
                {}
                + block.withName(name)
                + block.withValue(value)
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
            withInsertHeader(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header: value,
              }
            ),
            withInsertHeaderMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                insert_header+: converted,
              }
            ),
          },
          withCustomRequestHandling(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling: value,
            }
          ),
          withCustomRequestHandlingMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              custom_request_handling+: converted,
            }
          ),
        },
        withAllow(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allow: value,
          }
        ),
        withBlock(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            block: value,
          }
        ),
        withCaptcha(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            captcha: value,
          }
        ),
        withChallenge(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            challenge: value,
          }
        ),
        withCount(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            count: value,
          }
        ),
        withAllowMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            allow+: converted,
          }
        ),
        withBlockMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            block+: converted,
          }
        ),
        withCaptchaMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            captcha+: converted,
          }
        ),
        withChallengeMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            challenge+: converted,
          }
        ),
        withCountMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            count+: converted,
          }
        ),
      },
      withActionToUse(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action_to_use: value,
        }
      ),
      withActionToUseMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action_to_use+: converted,
        }
      ),
    },
    withRuleActionOverride(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_action_override: value,
      }
    ),
    withRuleActionOverrideMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_action_override+: converted,
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
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withManagedRuleGroup(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      managed_rule_group: value,
    }
  ),
  withRuleGroupReference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_group_reference: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withManagedRuleGroupMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      managed_rule_group+: converted,
    }
  ),
  withRuleGroupReferenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_group_reference+: converted,
    }
  ),
}
