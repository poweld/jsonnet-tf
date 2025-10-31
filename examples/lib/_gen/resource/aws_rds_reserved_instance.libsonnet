{
  local block = self,
  new(terraformName, offeringId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_reserved_instance",
          type:: "resource",
          attributes:: ["arn", "currency_code", "db_instance_class", "duration", "fixed_price", "id", "instance_count", "lease_id", "multi_az", "offering_id", "offering_type", "product_description", "recurring_charges", "region", "reservation_id", "start_time", "state", "tags", "tags_all", "usage_price"],
        },
      },
    }
    + block.withOfferingId(offeringId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceCount(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_count" expected to be of type "number"';
    {
      instance_count: converted,
    }
  ),
  withOfferingId(value):: (
    local converted = value;
    assert std.isString(converted) : '"offering_id" expected to be of type "string"';
    {
      offering_id: converted,
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
  withReservationId(value):: (
    local converted = value;
    assert std.isString(converted) : '"reservation_id" expected to be of type "string"';
    {
      reservation_id: converted,
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
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
