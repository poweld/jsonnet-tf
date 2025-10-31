{
  local block = self,
  new(terraformName, provisionedMemory):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_neptunegraph_graph",
          type:: "resource",
          attributes:: ["arn", "deletion_protection", "endpoint", "graph_name", "graph_name_prefix", "id", "kms_key_identifier", "provisioned_memory", "public_connectivity", "region", "replica_count", "tags", "tags_all"],
        },
      },
    }
    + block.withProvisionedMemory(provisionedMemory)
  ),
  "#withDeletionProtection":: "A value that indicates whether the graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.",
  withDeletionProtection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deletion_protection" expected to be of type "bool"';
    {
      deletion_protection: converted,
    }
  ),
  "#withGraphName":: "The graph name. For example: my-graph-1. \t\t\t\t\t\t\t\tThe name must contain from 1 to 63 letters, numbers, or hyphens,  \t\t\t\t\t\t\t\tand its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. \t\t\t\t\t\t\t\tIf you don't specify a graph name, a unique graph name is generated for you using the prefix graph-for,  \t\t\t\t\t\t\t\tfollowed by a combination of Stack Name and a UUID.",
  withGraphName(value):: (
    local converted = value;
    assert std.isString(converted) : '"graph_name" expected to be of type "string"';
    {
      graph_name: converted,
    }
  ),
  "#withGraphNamePrefix":: "Allows user to specify name prefix and have remainder of name automatically generated.",
  withGraphNamePrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"graph_name_prefix" expected to be of type "string"';
    {
      graph_name_prefix: converted,
    }
  ),
  "#withKmsKeyIdentifier":: "Specifies a KMS key to use to encrypt data in the new graph.  Value must be ARN of KMS Key.",
  withKmsKeyIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_identifier" expected to be of type "string"';
    {
      kms_key_identifier: converted,
    }
  ),
  "#withProvisionedMemory":: "The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.",
  withProvisionedMemory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provisioned_memory" expected to be of type "number"';
    {
      provisioned_memory: converted,
    }
  ),
  "#withPublicConnectivity":: "Specifies whether or not the graph can be reachable over the internet.  \t\t\t\t\t\t\t\tAll access to graphs is IAM authenticated. \t\t\t\t\t\t\t\tWhen the graph is publicly available, its domain name system (DNS) endpoint resolves to  \t\t\t\t\t\t\t\tthe public IP address from the internet. When the graph isn't publicly available, you need  \t\t\t\t\t\t\t\tto create a PrivateGraphEndpoint in a given VPC to ensure the DNS name resolves to a private  \t\t\t\t\t\t\t\tIP address that is reachable from the VPC.",
  withPublicConnectivity(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"public_connectivity" expected to be of type "bool"';
    {
      public_connectivity: converted,
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
  "#withReplicaCount":: "The number of replicas in other AZs.  Value must be between 0 and 2.",
  withReplicaCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"replica_count" expected to be of type "number"';
    {
      replica_count: converted,
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
  vector_search_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    "#withVectorSearchDimension":: "Specifies the number of dimensions for vector embeddings.  Value must be between 1 and 65,535.",
    withVectorSearchDimension(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"vector_search_dimension" expected to be of type "number"';
      {
        vector_search_dimension: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withVectorSearchConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_search_configuration: value,
    }
  ),
  withVectorSearchConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vector_search_configuration+: converted,
    }
  ),
}
