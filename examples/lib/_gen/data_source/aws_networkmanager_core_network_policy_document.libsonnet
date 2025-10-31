{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_networkmanager_core_network_policy_document",
          type:: "data",
          attributes:: ["id", "json", "version"],
        },
      },
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  attachment_policies:: {
    local block = self,
    new(ruleNumber):: (
      {}
      + block.withRuleNumber(ruleNumber)
    ),
    withConditionLogic(value):: (
      local converted = value;
      assert std.isString(converted) : '"condition_logic" expected to be of type "string"';
      {
        condition_logic: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withRuleNumber(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_number" expected to be of type "number"';
      {
        rule_number: converted,
      }
    ),
    action:: {
      local block = self,
      new():: (
        {}
      ),
      withAddToNetworkFunctionGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"add_to_network_function_group" expected to be of type "string"';
        {
          add_to_network_function_group: converted,
        }
      ),
      withAssociationMethod(value):: (
        local converted = value;
        assert std.isString(converted) : '"association_method" expected to be of type "string"';
        {
          association_method: converted,
        }
      ),
      withRequireAcceptance(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"require_acceptance" expected to be of type "bool"';
        {
          require_acceptance: converted,
        }
      ),
      withSegment(value):: (
        local converted = value;
        assert std.isString(converted) : '"segment" expected to be of type "string"';
        {
          segment: converted,
        }
      ),
      withTagValueOfKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_value_of_key" expected to be of type "string"';
        {
          tag_value_of_key: converted,
        }
      ),
    },
    conditions:: {
      local block = self,
      new(type):: (
        {}
        + block.withType(type)
      ),
      withKey(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      withOperator(value):: (
        local converted = value;
        assert std.isString(converted) : '"operator" expected to be of type "string"';
        {
          operator: converted,
        }
      ),
      withType(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
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
    withAction(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    withConditions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions: value,
      }
    ),
    withActionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    withConditionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions+: converted,
      }
    ),
  },
  core_network_configuration:: {
    local block = self,
    new(asnRanges):: (
      {}
      + block.withAsnRanges(asnRanges)
    ),
    withAsnRanges(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asn_ranges" expected to be of type "set"';
      {
        asn_ranges: converted,
      }
    ),
    withAsnRangesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asn_ranges" expected to be of type "set"';
      {
        asn_ranges+: converted,
      }
    ),
    withDnsSupport(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dns_support" expected to be of type "bool"';
      {
        dns_support: converted,
      }
    ),
    withInsideCidrBlocks(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inside_cidr_blocks" expected to be of type "set"';
      {
        inside_cidr_blocks: converted,
      }
    ),
    withInsideCidrBlocksMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inside_cidr_blocks" expected to be of type "set"';
      {
        inside_cidr_blocks+: converted,
      }
    ),
    withSecurityGroupReferencingSupport(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"security_group_referencing_support" expected to be of type "bool"';
      {
        security_group_referencing_support: converted,
      }
    ),
    withVpnEcmpSupport(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"vpn_ecmp_support" expected to be of type "bool"';
      {
        vpn_ecmp_support: converted,
      }
    ),
    edge_locations:: {
      local block = self,
      new(location):: (
        {}
        + block.withLocation(location)
      ),
      withAsn(value):: (
        local converted = value;
        assert std.isString(converted) : '"asn" expected to be of type "string"';
        {
          asn: converted,
        }
      ),
      withInsideCidrBlocks(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"inside_cidr_blocks" expected to be of type "list"';
        {
          inside_cidr_blocks: converted,
        }
      ),
      withInsideCidrBlocksMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"inside_cidr_blocks" expected to be of type "list"';
        {
          inside_cidr_blocks+: converted,
        }
      ),
      withLocation(value):: (
        local converted = value;
        assert std.isString(converted) : '"location" expected to be of type "string"';
        {
          location: converted,
        }
      ),
    },
    withEdgeLocations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        edge_locations: value,
      }
    ),
    withEdgeLocationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        edge_locations+: converted,
      }
    ),
  },
  network_function_groups:: {
    local block = self,
    new(name, requireAttachmentAcceptance):: (
      {}
      + block.withName(name)
      + block.withRequireAttachmentAcceptance(requireAttachmentAcceptance)
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
    withRequireAttachmentAcceptance(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_attachment_acceptance" expected to be of type "bool"';
      {
        require_attachment_acceptance: converted,
      }
    ),
  },
  segment_actions:: {
    local block = self,
    new(action, segment):: (
      {}
      + block.withAction(action)
      + block.withSegment(segment)
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
    withDestinationCidrBlocks(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destination_cidr_blocks" expected to be of type "set"';
      {
        destination_cidr_blocks: converted,
      }
    ),
    withDestinationCidrBlocksMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destination_cidr_blocks" expected to be of type "set"';
      {
        destination_cidr_blocks+: converted,
      }
    ),
    withDestinations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destinations" expected to be of type "set"';
      {
        destinations: converted,
      }
    ),
    withDestinationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destinations" expected to be of type "set"';
      {
        destinations+: converted,
      }
    ),
    withMode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    withSegment(value):: (
      local converted = value;
      assert std.isString(converted) : '"segment" expected to be of type "string"';
      {
        segment: converted,
      }
    ),
    withShareWith(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with" expected to be of type "set"';
      {
        share_with: converted,
      }
    ),
    withShareWithMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with" expected to be of type "set"';
      {
        share_with+: converted,
      }
    ),
    withShareWithExcept(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with_except" expected to be of type "set"';
      {
        share_with_except: converted,
      }
    ),
    withShareWithExceptMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with_except" expected to be of type "set"';
      {
        share_with_except+: converted,
      }
    ),
    via:: {
      local block = self,
      new():: (
        {}
      ),
      withNetworkFunctionGroups(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_function_groups" expected to be of type "set"';
        {
          network_function_groups: converted,
        }
      ),
      withNetworkFunctionGroupsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_function_groups" expected to be of type "set"';
        {
          network_function_groups+: converted,
        }
      ),
      with_edge_override:: {
        local block = self,
        new():: (
          {}
        ),
        withEdgeSets(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_sets" expected to be of type "set"';
          {
            edge_sets: converted,
          }
        ),
        withEdgeSetsMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_sets" expected to be of type "set"';
          {
            edge_sets+: converted,
          }
        ),
        withUseEdge(value):: (
          local converted = value;
          assert std.isString(converted) : '"use_edge" expected to be of type "string"';
          {
            use_edge: converted,
          }
        ),
        withUseEdgeLocation(value):: (
          local converted = value;
          assert std.isString(converted) : '"use_edge_location" expected to be of type "string"';
          {
            use_edge_location: converted,
          }
        ),
      },
      withWithEdgeOverride(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          with_edge_override: value,
        }
      ),
      withWithEdgeOverrideMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          with_edge_override+: converted,
        }
      ),
    },
    when_sent_to:: {
      local block = self,
      new():: (
        {}
      ),
      withSegments(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"segments" expected to be of type "set"';
        {
          segments: converted,
        }
      ),
      withSegmentsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"segments" expected to be of type "set"';
        {
          segments+: converted,
        }
      ),
    },
    withVia(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        via: value,
      }
    ),
    withWhenSentTo(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        when_sent_to: value,
      }
    ),
    withViaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        via+: converted,
      }
    ),
    withWhenSentToMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        when_sent_to+: converted,
      }
    ),
  },
  segments:: {
    local block = self,
    new(name):: (
      {}
      + block.withName(name)
    ),
    withAllowFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_filter" expected to be of type "set"';
      {
        allow_filter: converted,
      }
    ),
    withAllowFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_filter" expected to be of type "set"';
      {
        allow_filter+: converted,
      }
    ),
    withDenyFilter(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"deny_filter" expected to be of type "set"';
      {
        deny_filter: converted,
      }
    ),
    withDenyFilterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"deny_filter" expected to be of type "set"';
      {
        deny_filter+: converted,
      }
    ),
    withDescription(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    withEdgeLocations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_locations" expected to be of type "set"';
      {
        edge_locations: converted,
      }
    ),
    withEdgeLocationsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_locations" expected to be of type "set"';
      {
        edge_locations+: converted,
      }
    ),
    withIsolateAttachments(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"isolate_attachments" expected to be of type "bool"';
      {
        isolate_attachments: converted,
      }
    ),
    withName(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    withRequireAttachmentAcceptance(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_attachment_acceptance" expected to be of type "bool"';
      {
        require_attachment_acceptance: converted,
      }
    ),
  },
  withAttachmentPolicies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment_policies: value,
    }
  ),
  withCoreNetworkConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_network_configuration: value,
    }
  ),
  withNetworkFunctionGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_function_groups: value,
    }
  ),
  withSegmentActions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segment_actions: value,
    }
  ),
  withSegments(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segments: value,
    }
  ),
  withAttachmentPoliciesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment_policies+: converted,
    }
  ),
  withCoreNetworkConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_network_configuration+: converted,
    }
  ),
  withNetworkFunctionGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_function_groups+: converted,
    }
  ),
  withSegmentActionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segment_actions+: converted,
    }
  ),
  withSegmentsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segments+: converted,
    }
  ),
}
