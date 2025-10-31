{
  local block = self,
  new(terraformName, meshName, name, virtualGatewayName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appmesh_gateway_route",
          type:: "resource",
          attributes:: ["arn", "created_date", "id", "last_updated_date", "mesh_name", "mesh_owner", "name", "region", "resource_owner", "tags", "tags_all", "virtual_gateway_name"],
        },
      },
    }
    + block.withMeshName(meshName)
    + block.withName(name)
    + block.withVirtualGatewayName(virtualGatewayName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMeshName(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_name" expected to be of type "string"';
    {
      mesh_name: converted,
    }
  ),
  withMeshOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_owner" expected to be of type "string"';
    {
      mesh_owner: converted,
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
  withTagsAll(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  withVirtualGatewayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_gateway_name" expected to be of type "string"';
    {
      virtual_gateway_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  spec:: {
    local block = self,
    new():: (
      {}
    ),
    withPriority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    grpc_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        target:: {
          local block = self,
          new():: (
            {}
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          virtual_service:: {
            local block = self,
            new(virtualServiceName):: (
              {}
              + block.withVirtualServiceName(virtualServiceName)
            ),
            withVirtualServiceName(value):: (
              local converted = value;
              assert std.isString(converted) : '"virtual_service_name" expected to be of type "string"';
              {
                virtual_service_name: converted,
              }
            ),
          },
          withVirtualService(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service: value,
            }
          ),
          withVirtualServiceMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service+: converted,
            }
          ),
        },
        withTarget(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target: value,
          }
        ),
        withTargetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new(serviceName):: (
          {}
          + block.withServiceName(serviceName)
        ),
        withPort(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        withServiceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"service_name" expected to be of type "string"';
          {
            service_name: converted,
          }
        ),
      },
      withAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action: value,
        }
      ),
      withMatch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match: value,
        }
      ),
      withActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action+: converted,
        }
      ),
      withMatchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match+: converted,
        }
      ),
    },
    http2_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        rewrite:: {
          local block = self,
          new():: (
            {}
          ),
          hostname:: {
            local block = self,
            new(defaultTargetHostname):: (
              {}
              + block.withDefaultTargetHostname(defaultTargetHostname)
            ),
            withDefaultTargetHostname(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_target_hostname" expected to be of type "string"';
              {
                default_target_hostname: converted,
              }
            ),
          },
          path:: {
            local block = self,
            new(exact):: (
              {}
              + block.withExact(exact)
            ),
            withExact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          prefix:: {
            local block = self,
            new():: (
              {}
            ),
            withDefaultPrefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_prefix" expected to be of type "string"';
              {
                default_prefix: converted,
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
          withHostname(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname: value,
            }
          ),
          withPath(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path: value,
            }
          ),
          withPrefix(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix: value,
            }
          ),
          withHostnameMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname+: converted,
            }
          ),
          withPathMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path+: converted,
            }
          ),
          withPrefixMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix+: converted,
            }
          ),
        },
        target:: {
          local block = self,
          new():: (
            {}
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          virtual_service:: {
            local block = self,
            new(virtualServiceName):: (
              {}
              + block.withVirtualServiceName(virtualServiceName)
            ),
            withVirtualServiceName(value):: (
              local converted = value;
              assert std.isString(converted) : '"virtual_service_name" expected to be of type "string"';
              {
                virtual_service_name: converted,
              }
            ),
          },
          withVirtualService(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service: value,
            }
          ),
          withVirtualServiceMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service+: converted,
            }
          ),
        },
        withRewrite(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite: value,
          }
        ),
        withTarget(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target: value,
          }
        ),
        withRewriteMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite+: converted,
          }
        ),
        withTargetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        withPort(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        withPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        header:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withInvert(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"invert" expected to be of type "bool"';
            {
              invert: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          match:: {
            local block = self,
            new():: (
              {}
            ),
            withExact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
            withPrefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix" expected to be of type "string"';
              {
                prefix: converted,
              }
            ),
            withRegex(value):: (
              local converted = value;
              assert std.isString(converted) : '"regex" expected to be of type "string"';
              {
                regex: converted,
              }
            ),
            withSuffix(value):: (
              local converted = value;
              assert std.isString(converted) : '"suffix" expected to be of type "string"';
              {
                suffix: converted,
              }
            ),
            range:: {
              local block = self,
              new(end, start):: (
                {}
                + block.withEnd(end)
                + block.withStart(start)
              ),
              withEnd(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"end" expected to be of type "number"';
                {
                  end: converted,
                }
              ),
              withStart(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start" expected to be of type "number"';
                {
                  start: converted,
                }
              ),
            },
            withRange(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range: value,
              }
            ),
            withRangeMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range+: converted,
              }
            ),
          },
          withMatch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          withMatchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        hostname:: {
          local block = self,
          new():: (
            {}
          ),
          withExact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          withSuffix(value):: (
            local converted = value;
            assert std.isString(converted) : '"suffix" expected to be of type "string"';
            {
              suffix: converted,
            }
          ),
        },
        path:: {
          local block = self,
          new():: (
            {}
          ),
          withExact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          withRegex(value):: (
            local converted = value;
            assert std.isString(converted) : '"regex" expected to be of type "string"';
            {
              regex: converted,
            }
          ),
        },
        query_parameter:: {
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
          match:: {
            local block = self,
            new():: (
              {}
            ),
            withExact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          withMatch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          withMatchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        withHeader(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        withHostname(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname: value,
          }
        ),
        withPath(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path: value,
          }
        ),
        withQueryParameter(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter: value,
          }
        ),
        withHeaderMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        withHostnameMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname+: converted,
          }
        ),
        withPathMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path+: converted,
          }
        ),
        withQueryParameterMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter+: converted,
          }
        ),
      },
      withAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action: value,
        }
      ),
      withMatch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match: value,
        }
      ),
      withActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action+: converted,
        }
      ),
      withMatchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match+: converted,
        }
      ),
    },
    http_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        rewrite:: {
          local block = self,
          new():: (
            {}
          ),
          hostname:: {
            local block = self,
            new(defaultTargetHostname):: (
              {}
              + block.withDefaultTargetHostname(defaultTargetHostname)
            ),
            withDefaultTargetHostname(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_target_hostname" expected to be of type "string"';
              {
                default_target_hostname: converted,
              }
            ),
          },
          path:: {
            local block = self,
            new(exact):: (
              {}
              + block.withExact(exact)
            ),
            withExact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          prefix:: {
            local block = self,
            new():: (
              {}
            ),
            withDefaultPrefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_prefix" expected to be of type "string"';
              {
                default_prefix: converted,
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
          withHostname(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname: value,
            }
          ),
          withPath(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path: value,
            }
          ),
          withPrefix(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix: value,
            }
          ),
          withHostnameMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname+: converted,
            }
          ),
          withPathMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path+: converted,
            }
          ),
          withPrefixMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix+: converted,
            }
          ),
        },
        target:: {
          local block = self,
          new():: (
            {}
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          virtual_service:: {
            local block = self,
            new(virtualServiceName):: (
              {}
              + block.withVirtualServiceName(virtualServiceName)
            ),
            withVirtualServiceName(value):: (
              local converted = value;
              assert std.isString(converted) : '"virtual_service_name" expected to be of type "string"';
              {
                virtual_service_name: converted,
              }
            ),
          },
          withVirtualService(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service: value,
            }
          ),
          withVirtualServiceMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service+: converted,
            }
          ),
        },
        withRewrite(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite: value,
          }
        ),
        withTarget(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target: value,
          }
        ),
        withRewriteMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite+: converted,
          }
        ),
        withTargetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        withPort(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        withPrefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        header:: {
          local block = self,
          new(name):: (
            {}
            + block.withName(name)
          ),
          withInvert(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"invert" expected to be of type "bool"';
            {
              invert: converted,
            }
          ),
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          match:: {
            local block = self,
            new():: (
              {}
            ),
            withExact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
            withPrefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix" expected to be of type "string"';
              {
                prefix: converted,
              }
            ),
            withRegex(value):: (
              local converted = value;
              assert std.isString(converted) : '"regex" expected to be of type "string"';
              {
                regex: converted,
              }
            ),
            withSuffix(value):: (
              local converted = value;
              assert std.isString(converted) : '"suffix" expected to be of type "string"';
              {
                suffix: converted,
              }
            ),
            range:: {
              local block = self,
              new(end, start):: (
                {}
                + block.withEnd(end)
                + block.withStart(start)
              ),
              withEnd(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"end" expected to be of type "number"';
                {
                  end: converted,
                }
              ),
              withStart(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start" expected to be of type "number"';
                {
                  start: converted,
                }
              ),
            },
            withRange(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range: value,
              }
            ),
            withRangeMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range+: converted,
              }
            ),
          },
          withMatch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          withMatchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        hostname:: {
          local block = self,
          new():: (
            {}
          ),
          withExact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          withSuffix(value):: (
            local converted = value;
            assert std.isString(converted) : '"suffix" expected to be of type "string"';
            {
              suffix: converted,
            }
          ),
        },
        path:: {
          local block = self,
          new():: (
            {}
          ),
          withExact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          withRegex(value):: (
            local converted = value;
            assert std.isString(converted) : '"regex" expected to be of type "string"';
            {
              regex: converted,
            }
          ),
        },
        query_parameter:: {
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
          match:: {
            local block = self,
            new():: (
              {}
            ),
            withExact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          withMatch(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          withMatchMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        withHeader(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        withHostname(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname: value,
          }
        ),
        withPath(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path: value,
          }
        ),
        withQueryParameter(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter: value,
          }
        ),
        withHeaderMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        withHostnameMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname+: converted,
          }
        ),
        withPathMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path+: converted,
          }
        ),
        withQueryParameterMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter+: converted,
          }
        ),
      },
      withAction(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action: value,
        }
      ),
      withMatch(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match: value,
        }
      ),
      withActionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action+: converted,
        }
      ),
      withMatchMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match+: converted,
        }
      ),
    },
    withGrpcRoute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_route: value,
      }
    ),
    withHttp2Route(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http2_route: value,
      }
    ),
    withHttpRoute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_route: value,
      }
    ),
    withGrpcRouteMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_route+: converted,
      }
    ),
    withHttp2RouteMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http2_route+: converted,
      }
    ),
    withHttpRouteMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_route+: converted,
      }
    ),
  },
  withSpec(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec: value,
    }
  ),
  withSpecMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec+: converted,
    }
  ),
}
