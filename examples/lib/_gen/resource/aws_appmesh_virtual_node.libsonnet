{
  local block = self,
  new(terraformName, meshName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appmesh_virtual_node",
          type:: "resource",
          attributes:: ["arn", "created_date", "id", "last_updated_date", "mesh_name", "mesh_owner", "name", "region", "resource_owner", "tags", "tags_all"],
        },
      },
    }
    + block.withMeshName(meshName)
    + block.withName(name)
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
    backend:: {
      local block = self,
      new():: (
        {}
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
        client_policy:: {
          local block = self,
          new():: (
            {}
          ),
          tls:: {
            local block = self,
            new():: (
              {}
            ),
            withEnforce(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"enforce" expected to be of type "bool"';
              {
                enforce: converted,
              }
            ),
            withPorts(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
              {
                ports: converted,
              }
            ),
            withPortsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
              {
                ports+: converted,
              }
            ),
            certificate:: {
              local block = self,
              new():: (
                {}
              ),
              file:: {
                local block = self,
                new(certificateChain, privateKey):: (
                  {}
                  + block.withCertificateChain(certificateChain)
                  + block.withPrivateKey(privateKey)
                ),
                withCertificateChain(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                  {
                    certificate_chain: converted,
                  }
                ),
                withPrivateKey(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"private_key" expected to be of type "string"';
                  {
                    private_key: converted,
                  }
                ),
              },
              sds:: {
                local block = self,
                new(secretName):: (
                  {}
                  + block.withSecretName(secretName)
                ),
                withSecretName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                  {
                    secret_name: converted,
                  }
                ),
              },
              withFile(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file: value,
                }
              ),
              withSds(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds: value,
                }
              ),
              withFileMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file+: converted,
                }
              ),
              withSdsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds+: converted,
                }
              ),
            },
            validation:: {
              local block = self,
              new():: (
                {}
              ),
              subject_alternative_names:: {
                local block = self,
                new():: (
                  {}
                ),
                match:: {
                  local block = self,
                  new(exact):: (
                    {}
                    + block.withExact(exact)
                  ),
                  withExact(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                    {
                      exact: converted,
                    }
                  ),
                  withExactMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                    {
                      exact+: converted,
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
              trust:: {
                local block = self,
                new():: (
                  {}
                ),
                acm:: {
                  local block = self,
                  new(certificateAuthorityArns):: (
                    {}
                    + block.withCertificateAuthorityArns(certificateAuthorityArns)
                  ),
                  withCertificateAuthorityArns(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                    {
                      certificate_authority_arns: converted,
                    }
                  ),
                  withCertificateAuthorityArnsMixin(value):: (
                    local converted = if std.isArray(value) then value else [value];
                    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                    {
                      certificate_authority_arns+: converted,
                    }
                  ),
                },
                file:: {
                  local block = self,
                  new(certificateChain):: (
                    {}
                    + block.withCertificateChain(certificateChain)
                  ),
                  withCertificateChain(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                    {
                      certificate_chain: converted,
                    }
                  ),
                },
                sds:: {
                  local block = self,
                  new(secretName):: (
                    {}
                    + block.withSecretName(secretName)
                  ),
                  withSecretName(value):: (
                    local converted = value;
                    assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                    {
                      secret_name: converted,
                    }
                  ),
                },
                withAcm(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    acm: value,
                  }
                ),
                withFile(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    file: value,
                  }
                ),
                withSds(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    sds: value,
                  }
                ),
                withAcmMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    acm+: converted,
                  }
                ),
                withFileMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    file+: converted,
                  }
                ),
                withSdsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  {
                    sds+: converted,
                  }
                ),
              },
              withSubjectAlternativeNames(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  subject_alternative_names: value,
                }
              ),
              withTrust(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  trust: value,
                }
              ),
              withSubjectAlternativeNamesMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  subject_alternative_names+: converted,
                }
              ),
              withTrustMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  trust+: converted,
                }
              ),
            },
            withCertificate(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                certificate: value,
              }
            ),
            withValidation(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                validation: value,
              }
            ),
            withCertificateMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                certificate+: converted,
              }
            ),
            withValidationMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                validation+: converted,
              }
            ),
          },
          withTls(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tls: value,
            }
          ),
          withTlsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              tls+: converted,
            }
          ),
        },
        withClientPolicy(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_policy: value,
          }
        ),
        withClientPolicyMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            client_policy+: converted,
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
    backend_defaults:: {
      local block = self,
      new():: (
        {}
      ),
      client_policy:: {
        local block = self,
        new():: (
          {}
        ),
        tls:: {
          local block = self,
          new():: (
            {}
          ),
          withEnforce(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enforce" expected to be of type "bool"';
            {
              enforce: converted,
            }
          ),
          withPorts(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
            {
              ports: converted,
            }
          ),
          withPortsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ports" expected to be of type "set"';
            {
              ports+: converted,
            }
          ),
          certificate:: {
            local block = self,
            new():: (
              {}
            ),
            file:: {
              local block = self,
              new(certificateChain, privateKey):: (
                {}
                + block.withCertificateChain(certificateChain)
                + block.withPrivateKey(privateKey)
              ),
              withCertificateChain(value):: (
                local converted = value;
                assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                {
                  certificate_chain: converted,
                }
              ),
              withPrivateKey(value):: (
                local converted = value;
                assert std.isString(converted) : '"private_key" expected to be of type "string"';
                {
                  private_key: converted,
                }
              ),
            },
            sds:: {
              local block = self,
              new(secretName):: (
                {}
                + block.withSecretName(secretName)
              ),
              withSecretName(value):: (
                local converted = value;
                assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                {
                  secret_name: converted,
                }
              ),
            },
            withFile(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file: value,
              }
            ),
            withSds(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds: value,
              }
            ),
            withFileMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file+: converted,
              }
            ),
            withSdsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds+: converted,
              }
            ),
          },
          validation:: {
            local block = self,
            new():: (
              {}
            ),
            subject_alternative_names:: {
              local block = self,
              new():: (
                {}
              ),
              match:: {
                local block = self,
                new(exact):: (
                  {}
                  + block.withExact(exact)
                ),
                withExact(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                  {
                    exact: converted,
                  }
                ),
                withExactMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                  {
                    exact+: converted,
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
            trust:: {
              local block = self,
              new():: (
                {}
              ),
              acm:: {
                local block = self,
                new(certificateAuthorityArns):: (
                  {}
                  + block.withCertificateAuthorityArns(certificateAuthorityArns)
                ),
                withCertificateAuthorityArns(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                  {
                    certificate_authority_arns: converted,
                  }
                ),
                withCertificateAuthorityArnsMixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"certificate_authority_arns" expected to be of type "set"';
                  {
                    certificate_authority_arns+: converted,
                  }
                ),
              },
              file:: {
                local block = self,
                new(certificateChain):: (
                  {}
                  + block.withCertificateChain(certificateChain)
                ),
                withCertificateChain(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                  {
                    certificate_chain: converted,
                  }
                ),
              },
              sds:: {
                local block = self,
                new(secretName):: (
                  {}
                  + block.withSecretName(secretName)
                ),
                withSecretName(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                  {
                    secret_name: converted,
                  }
                ),
              },
              withAcm(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  acm: value,
                }
              ),
              withFile(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file: value,
                }
              ),
              withSds(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds: value,
                }
              ),
              withAcmMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  acm+: converted,
                }
              ),
              withFileMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  file+: converted,
                }
              ),
              withSdsMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  sds+: converted,
                }
              ),
            },
            withSubjectAlternativeNames(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                subject_alternative_names: value,
              }
            ),
            withTrust(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                trust: value,
              }
            ),
            withSubjectAlternativeNamesMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                subject_alternative_names+: converted,
              }
            ),
            withTrustMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                trust+: converted,
              }
            ),
          },
          withCertificate(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              certificate: value,
            }
          ),
          withValidation(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              validation: value,
            }
          ),
          withCertificateMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              certificate+: converted,
            }
          ),
          withValidationMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              validation+: converted,
            }
          ),
        },
        withTls(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tls: value,
          }
        ),
        withTlsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tls+: converted,
          }
        ),
      },
      withClientPolicy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_policy: value,
        }
      ),
      withClientPolicyMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_policy+: converted,
        }
      ),
    },
    listener:: {
      local block = self,
      new():: (
        {}
      ),
      connection_pool:: {
        local block = self,
        new():: (
          {}
        ),
        grpc:: {
          local block = self,
          new(maxRequests):: (
            {}
            + block.withMaxRequests(maxRequests)
          ),
          withMaxRequests(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_requests" expected to be of type "number"';
            {
              max_requests: converted,
            }
          ),
        },
        http:: {
          local block = self,
          new(maxConnections):: (
            {}
            + block.withMaxConnections(maxConnections)
          ),
          withMaxConnections(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_connections" expected to be of type "number"';
            {
              max_connections: converted,
            }
          ),
          withMaxPendingRequests(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_pending_requests" expected to be of type "number"';
            {
              max_pending_requests: converted,
            }
          ),
        },
        http2:: {
          local block = self,
          new(maxRequests):: (
            {}
            + block.withMaxRequests(maxRequests)
          ),
          withMaxRequests(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_requests" expected to be of type "number"';
            {
              max_requests: converted,
            }
          ),
        },
        tcp:: {
          local block = self,
          new(maxConnections):: (
            {}
            + block.withMaxConnections(maxConnections)
          ),
          withMaxConnections(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_connections" expected to be of type "number"';
            {
              max_connections: converted,
            }
          ),
        },
        withGrpc(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc: value,
          }
        ),
        withHttp(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http: value,
          }
        ),
        withHttp2(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2: value,
          }
        ),
        withTcp(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp: value,
          }
        ),
        withGrpcMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc+: converted,
          }
        ),
        withHttpMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http+: converted,
          }
        ),
        withHttp2Mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2+: converted,
          }
        ),
        withTcpMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp+: converted,
          }
        ),
      },
      health_check:: {
        local block = self,
        new(healthyThreshold, intervalMillis, protocol, timeoutMillis, unhealthyThreshold):: (
          {}
          + block.withHealthyThreshold(healthyThreshold)
          + block.withIntervalMillis(intervalMillis)
          + block.withProtocol(protocol)
          + block.withTimeoutMillis(timeoutMillis)
          + block.withUnhealthyThreshold(unhealthyThreshold)
        ),
        withHealthyThreshold(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
          {
            healthy_threshold: converted,
          }
        ),
        withIntervalMillis(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"interval_millis" expected to be of type "number"';
          {
            interval_millis: converted,
          }
        ),
        withPath(value):: (
          local converted = value;
          assert std.isString(converted) : '"path" expected to be of type "string"';
          {
            path: converted,
          }
        ),
        withPort(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        withProtocol(value):: (
          local converted = value;
          assert std.isString(converted) : '"protocol" expected to be of type "string"';
          {
            protocol: converted,
          }
        ),
        withTimeoutMillis(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"timeout_millis" expected to be of type "number"';
          {
            timeout_millis: converted,
          }
        ),
        withUnhealthyThreshold(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
          {
            unhealthy_threshold: converted,
          }
        ),
      },
      outlier_detection:: {
        local block = self,
        new(maxEjectionPercent, maxServerErrors):: (
          {}
          + block.withMaxEjectionPercent(maxEjectionPercent)
          + block.withMaxServerErrors(maxServerErrors)
        ),
        withMaxEjectionPercent(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_ejection_percent" expected to be of type "number"';
          {
            max_ejection_percent: converted,
          }
        ),
        withMaxServerErrors(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_server_errors" expected to be of type "number"';
          {
            max_server_errors: converted,
          }
        ),
        base_ejection_duration:: {
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
        interval:: {
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
        withBaseEjectionDuration(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            base_ejection_duration: value,
          }
        ),
        withInterval(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            interval: value,
          }
        ),
        withBaseEjectionDurationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            base_ejection_duration+: converted,
          }
        ),
        withIntervalMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            interval+: converted,
          }
        ),
      },
      port_mapping:: {
        local block = self,
        new(port, protocol):: (
          {}
          + block.withPort(port)
          + block.withProtocol(protocol)
        ),
        withPort(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        withProtocol(value):: (
          local converted = value;
          assert std.isString(converted) : '"protocol" expected to be of type "string"';
          {
            protocol: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        grpc:: {
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
        http:: {
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
        http2:: {
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
        tcp:: {
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
        withGrpc(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc: value,
          }
        ),
        withHttp(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http: value,
          }
        ),
        withHttp2(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2: value,
          }
        ),
        withTcp(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp: value,
          }
        ),
        withGrpcMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            grpc+: converted,
          }
        ),
        withHttpMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http+: converted,
          }
        ),
        withHttp2Mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            http2+: converted,
          }
        ),
        withTcpMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            tcp+: converted,
          }
        ),
      },
      tls:: {
        local block = self,
        new(mode):: (
          {}
          + block.withMode(mode)
        ),
        withMode(value):: (
          local converted = value;
          assert std.isString(converted) : '"mode" expected to be of type "string"';
          {
            mode: converted,
          }
        ),
        certificate:: {
          local block = self,
          new():: (
            {}
          ),
          acm:: {
            local block = self,
            new(certificateArn):: (
              {}
              + block.withCertificateArn(certificateArn)
            ),
            withCertificateArn(value):: (
              local converted = value;
              assert std.isString(converted) : '"certificate_arn" expected to be of type "string"';
              {
                certificate_arn: converted,
              }
            ),
          },
          file:: {
            local block = self,
            new(certificateChain, privateKey):: (
              {}
              + block.withCertificateChain(certificateChain)
              + block.withPrivateKey(privateKey)
            ),
            withCertificateChain(value):: (
              local converted = value;
              assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
              {
                certificate_chain: converted,
              }
            ),
            withPrivateKey(value):: (
              local converted = value;
              assert std.isString(converted) : '"private_key" expected to be of type "string"';
              {
                private_key: converted,
              }
            ),
          },
          sds:: {
            local block = self,
            new(secretName):: (
              {}
              + block.withSecretName(secretName)
            ),
            withSecretName(value):: (
              local converted = value;
              assert std.isString(converted) : '"secret_name" expected to be of type "string"';
              {
                secret_name: converted,
              }
            ),
          },
          withAcm(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              acm: value,
            }
          ),
          withFile(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              file: value,
            }
          ),
          withSds(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sds: value,
            }
          ),
          withAcmMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              acm+: converted,
            }
          ),
          withFileMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              file+: converted,
            }
          ),
          withSdsMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              sds+: converted,
            }
          ),
        },
        validation:: {
          local block = self,
          new():: (
            {}
          ),
          subject_alternative_names:: {
            local block = self,
            new():: (
              {}
            ),
            match:: {
              local block = self,
              new(exact):: (
                {}
                + block.withExact(exact)
              ),
              withExact(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                {
                  exact: converted,
                }
              ),
              withExactMixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exact" expected to be of type "set"';
                {
                  exact+: converted,
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
          trust:: {
            local block = self,
            new():: (
              {}
            ),
            file:: {
              local block = self,
              new(certificateChain):: (
                {}
                + block.withCertificateChain(certificateChain)
              ),
              withCertificateChain(value):: (
                local converted = value;
                assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
                {
                  certificate_chain: converted,
                }
              ),
            },
            sds:: {
              local block = self,
              new(secretName):: (
                {}
                + block.withSecretName(secretName)
              ),
              withSecretName(value):: (
                local converted = value;
                assert std.isString(converted) : '"secret_name" expected to be of type "string"';
                {
                  secret_name: converted,
                }
              ),
            },
            withFile(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file: value,
              }
            ),
            withSds(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds: value,
              }
            ),
            withFileMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                file+: converted,
              }
            ),
            withSdsMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                sds+: converted,
              }
            ),
          },
          withSubjectAlternativeNames(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              subject_alternative_names: value,
            }
          ),
          withTrust(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              trust: value,
            }
          ),
          withSubjectAlternativeNamesMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              subject_alternative_names+: converted,
            }
          ),
          withTrustMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              trust+: converted,
            }
          ),
        },
        withCertificate(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            certificate: value,
          }
        ),
        withValidation(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            validation: value,
          }
        ),
        withCertificateMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            certificate+: converted,
          }
        ),
        withValidationMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            validation+: converted,
          }
        ),
      },
      withConnectionPool(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          connection_pool: value,
        }
      ),
      withHealthCheck(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          health_check: value,
        }
      ),
      withOutlierDetection(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outlier_detection: value,
        }
      ),
      withPortMapping(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_mapping: value,
        }
      ),
      withTimeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      withTls(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls: value,
        }
      ),
      withConnectionPoolMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          connection_pool+: converted,
        }
      ),
      withHealthCheckMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          health_check+: converted,
        }
      ),
      withOutlierDetectionMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          outlier_detection+: converted,
        }
      ),
      withPortMappingMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_mapping+: converted,
        }
      ),
      withTimeoutMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
      withTlsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tls+: converted,
        }
      ),
    },
    logging:: {
      local block = self,
      new():: (
        {}
      ),
      access_log:: {
        local block = self,
        new():: (
          {}
        ),
        file:: {
          local block = self,
          new(path):: (
            {}
            + block.withPath(path)
          ),
          withPath(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
          format:: {
            local block = self,
            new():: (
              {}
            ),
            withText(value):: (
              local converted = value;
              assert std.isString(converted) : '"text" expected to be of type "string"';
              {
                text: converted,
              }
            ),
            json:: {
              local block = self,
              new(key, value):: (
                {}
                + block.withKey(key)
                + block.withValue(value)
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
            withJson(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                json: value,
              }
            ),
            withJsonMixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                json+: converted,
              }
            ),
          },
          withFormat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              format: value,
            }
          ),
          withFormatMixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              format+: converted,
            }
          ),
        },
        withFile(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file: value,
          }
        ),
        withFileMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            file+: converted,
          }
        ),
      },
      withAccessLog(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_log: value,
        }
      ),
      withAccessLogMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          access_log+: converted,
        }
      ),
    },
    service_discovery:: {
      local block = self,
      new():: (
        {}
      ),
      aws_cloud_map:: {
        local block = self,
        new(namespaceName, serviceName):: (
          {}
          + block.withNamespaceName(namespaceName)
          + block.withServiceName(serviceName)
        ),
        withAttributes(value):: (
          local converted = value;
          assert std.isObject(converted) : '"attributes" expected to be of type "map"';
          {
            attributes: converted,
          }
        ),
        withNamespaceName(value):: (
          local converted = value;
          assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
          {
            namespace_name: converted,
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
      dns:: {
        local block = self,
        new(hostname):: (
          {}
          + block.withHostname(hostname)
        ),
        withHostname(value):: (
          local converted = value;
          assert std.isString(converted) : '"hostname" expected to be of type "string"';
          {
            hostname: converted,
          }
        ),
        withIpPreference(value):: (
          local converted = value;
          assert std.isString(converted) : '"ip_preference" expected to be of type "string"';
          {
            ip_preference: converted,
          }
        ),
        withResponseType(value):: (
          local converted = value;
          assert std.isString(converted) : '"response_type" expected to be of type "string"';
          {
            response_type: converted,
          }
        ),
      },
      withAwsCloudMap(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_cloud_map: value,
        }
      ),
      withDns(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dns: value,
        }
      ),
      withAwsCloudMapMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          aws_cloud_map+: converted,
        }
      ),
      withDnsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          dns+: converted,
        }
      ),
    },
    withBackend(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend: value,
      }
    ),
    withBackendDefaults(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend_defaults: value,
      }
    ),
    withListener(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        listener: value,
      }
    ),
    withLogging(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        logging: value,
      }
    ),
    withServiceDiscovery(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_discovery: value,
      }
    ),
    withBackendMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend+: converted,
      }
    ),
    withBackendDefaultsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        backend_defaults+: converted,
      }
    ),
    withListenerMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        listener+: converted,
      }
    ),
    withLoggingMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        logging+: converted,
      }
    ),
    withServiceDiscoveryMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_discovery+: converted,
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
