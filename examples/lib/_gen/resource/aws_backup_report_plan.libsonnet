{
  local block = self,
  new(terraformName, name):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_backup_report_plan",
          type:: "resource",
          attributes:: ["arn", "creation_time", "deployment_status", "description", "id", "name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
  ),
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  report_delivery_channel:: {
    local block = self,
    new(s3BucketName):: (
      {}
      + block.withS3BucketName(s3BucketName)
    ),
    withFormats(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"formats" expected to be of type "set"';
      {
        formats: converted,
      }
    ),
    withFormatsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"formats" expected to be of type "set"';
      {
        formats+: converted,
      }
    ),
    withS3BucketName(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
      {
        s3_bucket_name: converted,
      }
    ),
    withS3KeyPrefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
      {
        s3_key_prefix: converted,
      }
    ),
  },
  report_setting:: {
    local block = self,
    new(reportTemplate):: (
      {}
      + block.withReportTemplate(reportTemplate)
    ),
    withAccounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts: converted,
      }
    ),
    withAccountsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts+: converted,
      }
    ),
    withFrameworkArns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"framework_arns" expected to be of type "set"';
      {
        framework_arns: converted,
      }
    ),
    withFrameworkArnsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"framework_arns" expected to be of type "set"';
      {
        framework_arns+: converted,
      }
    ),
    withNumberOfFrameworks(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"number_of_frameworks" expected to be of type "number"';
      {
        number_of_frameworks: converted,
      }
    ),
    withOrganizationUnits(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_units" expected to be of type "set"';
      {
        organization_units: converted,
      }
    ),
    withOrganizationUnitsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organization_units" expected to be of type "set"';
      {
        organization_units+: converted,
      }
    ),
    withRegions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions: converted,
      }
    ),
    withRegionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
      {
        regions+: converted,
      }
    ),
    withReportTemplate(value):: (
      local converted = value;
      assert std.isString(converted) : '"report_template" expected to be of type "string"';
      {
        report_template: converted,
      }
    ),
  },
  withReportDeliveryChannel(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_delivery_channel: value,
    }
  ),
  withReportSetting(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_setting: value,
    }
  ),
  withReportDeliveryChannelMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_delivery_channel+: converted,
    }
  ),
  withReportSettingMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      report_setting+: converted,
    }
  ),
}
