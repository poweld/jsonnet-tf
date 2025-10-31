{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_docdb_orderable_db_instance",
          type:: "data",
          attributes:: ["availability_zones", "engine", "engine_version", "id", "instance_class", "license_model", "preferred_instance_classes", "region", "vpc"],
        },
      },
    }
  ),
  withEngine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  withEngineVersion(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withInstanceClass(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_class" expected to be of type "string"';
    {
      instance_class: converted,
    }
  ),
  withLicenseModel(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_model" expected to be of type "string"';
    {
      license_model: converted,
    }
  ),
  withPreferredInstanceClasses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_instance_classes" expected to be of type "list"';
    {
      preferred_instance_classes: converted,
    }
  ),
  withPreferredInstanceClassesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_instance_classes" expected to be of type "list"';
    {
      preferred_instance_classes+: converted,
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
  withVpc(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"vpc" expected to be of type "bool"';
    {
      vpc: converted,
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
