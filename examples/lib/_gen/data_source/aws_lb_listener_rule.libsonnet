{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lb_listener_rule",
          type:: "data",
          attributes:: ["arn", "listener_arn", "priority", "region", "tags"],
        },
      },
    }
  ),
  withArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  withListenerArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_arn" expected to be of type "string"';
    {
      listener_arn: converted,
    }
  ),
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  action:: {
    local block = self,
    new():: (
      {}
    ),
    authenticate_cognito:: {
      local block = self,
      new():: (
        {}
      ),
    },
    authenticate_oidc:: {
      local block = self,
      new():: (
        {}
      ),
    },
    fixed_response:: {
      local block = self,
      new():: (
        {}
      ),
    },
    forward:: {
      local block = self,
      new():: (
        {}
      ),
      stickiness:: {
        local block = self,
        new():: (
          {}
        ),
      },
      target_group:: {
        local block = self,
        new():: (
          {}
        ),
      },
      withStickiness(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stickiness: value,
        }
      ),
      withTargetGroup(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group: value,
        }
      ),
      withStickinessMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stickiness+: converted,
        }
      ),
      withTargetGroupMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group+: converted,
        }
      ),
    },
    redirect:: {
      local block = self,
      new():: (
        {}
      ),
    },
    withAuthenticateCognito(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_cognito: value,
      }
    ),
    withAuthenticateOidc(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_oidc: value,
      }
    ),
    withFixedResponse(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response: value,
      }
    ),
    withForward(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward: value,
      }
    ),
    withRedirect(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect: value,
      }
    ),
    withAuthenticateCognitoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_cognito+: converted,
      }
    ),
    withAuthenticateOidcMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        authenticate_oidc+: converted,
      }
    ),
    withFixedResponseMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fixed_response+: converted,
      }
    ),
    withForwardMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        forward+: converted,
      }
    ),
    withRedirectMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redirect+: converted,
      }
    ),
  },
  condition:: {
    local block = self,
    new():: (
      {}
    ),
    host_header:: {
      local block = self,
      new():: (
        {}
      ),
    },
    http_header:: {
      local block = self,
      new():: (
        {}
      ),
    },
    http_request_method:: {
      local block = self,
      new():: (
        {}
      ),
    },
    path_pattern:: {
      local block = self,
      new():: (
        {}
      ),
    },
    query_string:: {
      local block = self,
      new():: (
        {}
      ),
      values:: {
        local block = self,
        new():: (
          {}
        ),
      },
      withValues(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          values: value,
        }
      ),
      withValuesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          values+: converted,
        }
      ),
    },
    source_ip:: {
      local block = self,
      new():: (
        {}
      ),
    },
    withHostHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        host_header: value,
      }
    ),
    withHttpHeader(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header: value,
      }
    ),
    withHttpRequestMethod(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_request_method: value,
      }
    ),
    withPathPattern(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        path_pattern: value,
      }
    ),
    withQueryString(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string: value,
      }
    ),
    withSourceIp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_ip: value,
      }
    ),
    withHostHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        host_header+: converted,
      }
    ),
    withHttpHeaderMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_header+: converted,
      }
    ),
    withHttpRequestMethodMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_request_method+: converted,
      }
    ),
    withPathPatternMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        path_pattern+: converted,
      }
    ),
    withQueryStringMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        query_string+: converted,
      }
    ),
    withSourceIpMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        source_ip+: converted,
      }
    ),
  },
  withAction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  withCondition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition: value,
    }
  ),
  withActionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  withConditionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      condition+: converted,
    }
  ),
}
