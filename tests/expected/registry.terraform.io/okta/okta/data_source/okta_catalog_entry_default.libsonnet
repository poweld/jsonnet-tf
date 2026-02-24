{
  local block = self,

  new(terraformName, entryId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_catalog_entry_default",
          type:: "data",
          attributes:: ["description", "entry_id", "id", "label", "name", "parent", "requestable"],
        },
      },
    }
    + block.withEntryId(entryId)
  ),

  "#withEntryId":: "The ID of the catalog entry.",
  withEntryId(value):: (
    assert std.isString(value) : '"entry_id" expected to be of type "string"';

    {
      entry_id: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  counts:: {
    local block = self,

    new():: (
      {}
    ),

    resourceCounts:: {
      local block = self,

      new():: (
        {}
      ),
    },
    withResourceCounts(value):: (
      {
        resource_counts: value,
      }
    ),
  },
  links:: {
    local block = self,

    new():: (
      {}
    ),

    "self":: {
      local block = self,

      new():: (
        {}
      ),
    },
    withSelf(value):: (
      {
        "self": value,
      }
    ),
  },
  withCounts(value):: (
    {
      counts: value,
    }
  ),
  withLinks(value):: (
    {
      links: value,
    }
  ),
}
