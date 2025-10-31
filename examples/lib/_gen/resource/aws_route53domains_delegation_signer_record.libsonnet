{
  local block = self,
  new(terraformName, domainName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_route53domains_delegation_signer_record",
          type:: "resource",
          attributes:: ["dnssec_key_id", "domain_name", "id"],
        },
      },
    }
    + block.withDomainName(domainName)
  ),
  withDomainName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  signing_attributes:: {
    local block = self,
    new(algorithm, flags, publicKey):: (
      {}
      + block.withAlgorithm(algorithm)
      + block.withFlags(flags)
      + block.withPublicKey(publicKey)
    ),
    withAlgorithm(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"algorithm" expected to be of type "number"';
      {
        algorithm: converted,
      }
    ),
    withFlags(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"flags" expected to be of type "number"';
      {
        flags: converted,
      }
    ),
    withPublicKey(value):: (
      local converted = value;
      assert std.isString(converted) : '"public_key" expected to be of type "string"';
      {
        public_key: converted,
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
  },
  withSigningAttributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signing_attributes: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withSigningAttributesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      signing_attributes+: converted,
    }
  ),
}
