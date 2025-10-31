{
  local block = self,
  new(terraformName, dbInstanceClass, duration, multiAz, offeringType, productDescription):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rds_reserved_instance_offering",
          type:: "data",
          attributes:: ["currency_code", "db_instance_class", "duration", "fixed_price", "id", "multi_az", "offering_id", "offering_type", "product_description", "region"],
        },
      },
    }
    + block.withDbInstanceClass(dbInstanceClass)
    + block.withDuration(duration)
    + block.withMultiAz(multiAz)
    + block.withOfferingType(offeringType)
    + block.withProductDescription(productDescription)
  ),
  withDbInstanceClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_class" expected to be of type "string"';
    {
      db_instance_class: converted,
    }
  ),
  withDuration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration" expected to be of type "number"';
    {
      duration: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withMultiAz(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  withOfferingType(value):: (
    local converted = value;
    assert std.isString(converted) : '"offering_type" expected to be of type "string"';
    {
      offering_type: converted,
    }
  ),
  withProductDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_description" expected to be of type "string"';
    {
      product_description: converted,
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
}
