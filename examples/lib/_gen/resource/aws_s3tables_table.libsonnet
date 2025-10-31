{
  local block = self,
  new(terraformName, format, name, namespace, tableBucketArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_s3tables_table",
          type:: "resource",
          attributes:: ["arn", "created_at", "created_by", "encryption_configuration", "format", "maintenance_configuration", "metadata_location", "modified_at", "modified_by", "name", "namespace", "owner_account_id", "region", "table_bucket_arn", "type", "version_token", "warehouse_location"],
        },
      },
    }
    + block.withFormat(format)
    + block.withName(name)
    + block.withNamespace(namespace)
    + block.withTableBucketArn(tableBucketArn)
  ),
  withEncryptionConfiguration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"encryption_configuration" expected to be of type "object"';
    {
      encryption_configuration: converted,
    }
  ),
  withFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"format" expected to be of type "string"';
    {
      format: converted,
    }
  ),
  withMaintenanceConfiguration(value):: (
    local converted = value;
    assert std.isObject(converted) : '"maintenance_configuration" expected to be of type "object"';
    {
      maintenance_configuration: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  withNamespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
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
  withTableBucketArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"table_bucket_arn" expected to be of type "string"';
    {
      table_bucket_arn: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  metadata:: {
    local block = self,
    new():: (
      {}
    ),
    iceberg:: {
      local block = self,
      new():: (
        {}
      ),
      schema:: {
        local block = self,
        new():: (
          {}
        ),
        field:: {
          local block = self,
          new(name, type):: (
            {}
            + block.withName(name)
            + block.withType(type)
          ),
          "#withName":: "The name of the field.",
          withName(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          "#withRequired":: "A Boolean value that specifies whether values are required for each row in this field. Default: false.",
          withRequired(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
            {
              required: converted,
            }
          ),
          "#withType":: "The field type. S3 Tables supports all Apache Iceberg primitive types.",
          withType(value):: (
            local converted = value;
            assert std.isString(converted) : '"type" expected to be of type "string"';
            {
              type: converted,
            }
          ),
        },
        withField(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            field: value,
          }
        ),
        withFieldMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            field+: converted,
          }
        ),
      },
      withSchema(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema: value,
        }
      ),
      withSchemaMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          schema+: converted,
        }
      ),
    },
    withIceberg(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg: value,
      }
    ),
    withIcebergMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        iceberg+: converted,
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
}
