{
  local block = self,
  new(terraformName, app, appBundleArn, ingestionType, tenantId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_appfabric_ingestion",
          type:: "resource",
          attributes:: ["app", "app_bundle_arn", "arn", "id", "ingestion_type", "region", "tags", "tags_all", "tenant_id"],
        },
      },
    }
    + block.withApp(app)
    + block.withAppBundleArn(appBundleArn)
    + block.withIngestionType(ingestionType)
    + block.withTenantId(tenantId)
  ),
  withApp(value):: (
    local converted = value;
    assert std.isString(converted) : '"app" expected to be of type "string"';
    {
      app: converted,
    }
  ),
  withAppBundleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
    }
  ),
  withIngestionType(value):: (
    local converted = value;
    assert std.isString(converted) : '"ingestion_type" expected to be of type "string"';
    {
      ingestion_type: converted,
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
  withTenantId(value):: (
    local converted = value;
    assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
    {
      tenant_id: converted,
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
