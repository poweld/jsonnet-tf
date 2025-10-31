{
  local block = self,
  new(terraformName, serviceName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_lightsail_container_service_deployment_version",
          type:: "resource",
          attributes:: ["created_at", "id", "region", "service_name", "state", "version"],
        },
      },
    }
    + block.withServiceName(serviceName)
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
  withServiceName(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  container:: {
    local block = self,
    new(containerName, image):: (
      {}
      + block.withContainerName(containerName)
      + block.withImage(image)
    ),
    withCommand(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command: converted,
      }
    ),
    withCommandMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command+: converted,
      }
    ),
    withContainerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    withEnvironment(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment" expected to be of type "map"';
      {
        environment: converted,
      }
    ),
    withImage(value):: (
      local converted = value;
      assert std.isString(converted) : '"image" expected to be of type "string"';
      {
        image: converted,
      }
    ),
    withPorts(value):: (
      local converted = value;
      assert std.isObject(converted) : '"ports" expected to be of type "map"';
      {
        ports: converted,
      }
    ),
  },
  public_endpoint:: {
    local block = self,
    new(containerName, containerPort):: (
      {}
      + block.withContainerName(containerName)
      + block.withContainerPort(containerPort)
    ),
    withContainerName(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    withContainerPort(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    health_check:: {
      local block = self,
      new():: (
        {}
      ),
      withHealthyThreshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
        {
          healthy_threshold: converted,
        }
      ),
      withIntervalSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"interval_seconds" expected to be of type "number"';
        {
          interval_seconds: converted,
        }
      ),
      withPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      withSuccessCodes(value):: (
        local converted = value;
        assert std.isString(converted) : '"success_codes" expected to be of type "string"';
        {
          success_codes: converted,
        }
      ),
      withTimeoutSeconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
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
    withHealthCheck(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        health_check: value,
      }
    ),
    withHealthCheckMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        health_check+: converted,
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
  },
  withContainer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container: value,
    }
  ),
  withPublicEndpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_endpoint: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withContainerMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      container+: converted,
    }
  ),
  withPublicEndpointMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_endpoint+: converted,
    }
  ),
}
