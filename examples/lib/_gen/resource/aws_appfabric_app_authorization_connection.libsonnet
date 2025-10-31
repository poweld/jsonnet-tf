{
  local block = self,
  new(terraformName, appAuthorizationArn, appBundleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appfabric_app_authorization_connection",
          type:: "resource",
          attributes:: ["app", "app_authorization_arn", "app_bundle_arn", "id", "region", "tenant"],
        },
      },
    }
    + block.withAppAuthorizationArn(appAuthorizationArn)
    + block.withAppBundleArn(appBundleArn)
  ),
  withAppAuthorizationArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_authorization_arn" expected to be of type "string"';
    {
      app_authorization_arn: converted,
    }
  ),
  withAppBundleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
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
  auth_request:: {
    local block = self,
    new(code, redirectUri):: (
      {}
      + block.withCode(code)
      + block.withRedirectUri(redirectUri)
    ),
    withCode(value):: (
      local converted = value;
      assert std.isString(converted) : '"code" expected to be of type "string"';
      {
        code: converted,
      }
    ),
    withRedirectUri(value):: (
      local converted = value;
      assert std.isString(converted) : '"redirect_uri" expected to be of type "string"';
      {
        redirect_uri: converted,
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
  },
  withAuthRequest(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_request: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withAuthRequestMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auth_request+: converted,
    }
  ),
}
