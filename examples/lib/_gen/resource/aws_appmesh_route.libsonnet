{
  local block = self,
  new(terraformName, meshName, name, virtualRouterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appmesh_route",
          type:: "resource",
          attributes:: ["arn", "created_date", "id", "last_updated_date", "mesh_name", "mesh_owner", "name", "region", "resource_owner", "tags", "tags_all", "virtual_router_name"],
        },
      },
    }
    + block.withMeshName(meshName)
    + block.withName(name)
    + block.withVirtualRouterName(virtualRouterName)
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
  withVirtualRouterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_router_name" expected to be of type "string"';
    {
      virtual_router_name: converted,
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
        weighted_target:: {
          local block = self,
          new(virtualNode, weight):: (
            {}
            + block.withVirtualNode(virtualNode)
            + block.withWeight(weight)
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          withVirtualNode(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          withWeight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        withWeightedTarget(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        withWeightedTargetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        withMethodName(value):: (
          local converted = value;
          assert std.isString(converted) : '"method_name" expected to be of type "string"';
          {
            method_name: converted,
          }
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
        withServiceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"service_name" expected to be of type "string"';
          {
            service_name: converted,
          }
        ),
        metadata:: {
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
        withMetadata(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metadata: value,
          }
        ),
        withMetadataMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metadata+: converted,
          }
        ),
      },
      retry_policy:: {
        local block = self,
        new(maxRetries):: (
          {}
          + block.withMaxRetries(maxRetries)
        ),
        withGrpcRetryEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grpc_retry_events" expected to be of type "set"';
          {
            grpc_retry_events: converted,
          }
        ),
        withGrpcRetryEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grpc_retry_events" expected to be of type "set"';
          {
            grpc_retry_events+: converted,
          }
        ),
        withHttpRetryEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events: converted,
          }
        ),
        withHttpRetryEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events+: converted,
          }
        ),
        withMaxRetries(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
          {
            max_retries: converted,
          }
        ),
        withTcpRetryEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events: converted,
          }
        ),
        withTcpRetryEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events+: converted,
          }
        ),
        per_retry_timeout:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withPerRetryTimeout(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout: value,
          }
        ),
        withPerRetryTimeoutMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout+: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        per_request:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withIdle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        withPerRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request: value,
          }
        ),
        withIdleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
          }
        ),
        withPerRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request+: converted,
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
      withRetryPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy: value,
        }
      ),
      withTimeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
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
      withRetryPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy+: converted,
        }
      ),
      withTimeoutMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
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
        weighted_target:: {
          local block = self,
          new(virtualNode, weight):: (
            {}
            + block.withVirtualNode(virtualNode)
            + block.withWeight(weight)
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          withVirtualNode(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          withWeight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        withWeightedTarget(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        withWeightedTargetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        withMethod(value):: (
          local converted = value;
          assert std.isString(converted) : '"method" expected to be of type "string"';
          {
            method: converted,
          }
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
        withScheme(value):: (
          local converted = value;
          assert std.isString(converted) : '"scheme" expected to be of type "string"';
          {
            scheme: converted,
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
      retry_policy:: {
        local block = self,
        new(maxRetries):: (
          {}
          + block.withMaxRetries(maxRetries)
        ),
        withHttpRetryEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events: converted,
          }
        ),
        withHttpRetryEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events+: converted,
          }
        ),
        withMaxRetries(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
          {
            max_retries: converted,
          }
        ),
        withTcpRetryEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events: converted,
          }
        ),
        withTcpRetryEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events+: converted,
          }
        ),
        per_retry_timeout:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withPerRetryTimeout(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout: value,
          }
        ),
        withPerRetryTimeoutMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout+: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        per_request:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withIdle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        withPerRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request: value,
          }
        ),
        withIdleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
          }
        ),
        withPerRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request+: converted,
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
      withRetryPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy: value,
        }
      ),
      withTimeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
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
      withRetryPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy+: converted,
        }
      ),
      withTimeoutMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
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
        weighted_target:: {
          local block = self,
          new(virtualNode, weight):: (
            {}
            + block.withVirtualNode(virtualNode)
            + block.withWeight(weight)
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          withVirtualNode(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          withWeight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        withWeightedTarget(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        withWeightedTargetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        withMethod(value):: (
          local converted = value;
          assert std.isString(converted) : '"method" expected to be of type "string"';
          {
            method: converted,
          }
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
        withScheme(value):: (
          local converted = value;
          assert std.isString(converted) : '"scheme" expected to be of type "string"';
          {
            scheme: converted,
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
      retry_policy:: {
        local block = self,
        new(maxRetries):: (
          {}
          + block.withMaxRetries(maxRetries)
        ),
        withHttpRetryEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events: converted,
          }
        ),
        withHttpRetryEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events+: converted,
          }
        ),
        withMaxRetries(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
          {
            max_retries: converted,
          }
        ),
        withTcpRetryEvents(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events: converted,
          }
        ),
        withTcpRetryEventsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events+: converted,
          }
        ),
        per_retry_timeout:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withPerRetryTimeout(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout: value,
          }
        ),
        withPerRetryTimeoutMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout+: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        per_request:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withIdle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        withPerRequest(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request: value,
          }
        ),
        withIdleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
          }
        ),
        withPerRequestMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request+: converted,
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
      withRetryPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy: value,
        }
      ),
      withTimeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
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
      withRetryPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy+: converted,
        }
      ),
      withTimeoutMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
    },
    tcp_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        weighted_target:: {
          local block = self,
          new(virtualNode, weight):: (
            {}
            + block.withVirtualNode(virtualNode)
            + block.withWeight(weight)
          ),
          withPort(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          withVirtualNode(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          withWeight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        withWeightedTarget(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        withWeightedTargetMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
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
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.withUnit(unit)
            + block.withValue(value)
          ),
          withUnit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          withValue(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        withIdle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        withIdleMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
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
      withTimeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
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
      withTimeoutMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
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
    withTcpRoute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tcp_route: value,
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
    withTcpRouteMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tcp_route+: converted,
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
