{
  local block = self,
  new(terraformName, customPermissionsName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_custom_permissions",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "custom_permissions_name", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withCustomPermissionsName(customPermissionsName)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withCustomPermissionsName(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_permissions_name" expected to be of type "string"';
    {
      custom_permissions_name: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  capabilities:: {
    local block = self,
    new():: (
      {}
    ),
    withAddOrRunAnomalyDetectionForAnalyses(value):: (
      local converted = value;
      assert std.isString(converted) : '"add_or_run_anomaly_detection_for_analyses" expected to be of type "string"';
      {
        add_or_run_anomaly_detection_for_analyses: converted,
      }
    ),
    withCreateAndUpdateDashboardEmailReports(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_and_update_dashboard_email_reports" expected to be of type "string"';
      {
        create_and_update_dashboard_email_reports: converted,
      }
    ),
    withCreateAndUpdateDataSources(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_and_update_data_sources" expected to be of type "string"';
      {
        create_and_update_data_sources: converted,
      }
    ),
    withCreateAndUpdateDatasets(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_and_update_datasets" expected to be of type "string"';
      {
        create_and_update_datasets: converted,
      }
    ),
    withCreateAndUpdateThemes(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_and_update_themes" expected to be of type "string"';
      {
        create_and_update_themes: converted,
      }
    ),
    withCreateAndUpdateThresholdAlerts(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_and_update_threshold_alerts" expected to be of type "string"';
      {
        create_and_update_threshold_alerts: converted,
      }
    ),
    withCreateSharedFolders(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_shared_folders" expected to be of type "string"';
      {
        create_shared_folders: converted,
      }
    ),
    withCreateSpiceDataset(value):: (
      local converted = value;
      assert std.isString(converted) : '"create_spice_dataset" expected to be of type "string"';
      {
        create_spice_dataset: converted,
      }
    ),
    withExportToCsv(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_csv" expected to be of type "string"';
      {
        export_to_csv: converted,
      }
    ),
    withExportToCsvInScheduledReports(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_csv_in_scheduled_reports" expected to be of type "string"';
      {
        export_to_csv_in_scheduled_reports: converted,
      }
    ),
    withExportToExcel(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_excel" expected to be of type "string"';
      {
        export_to_excel: converted,
      }
    ),
    withExportToExcelInScheduledReports(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_excel_in_scheduled_reports" expected to be of type "string"';
      {
        export_to_excel_in_scheduled_reports: converted,
      }
    ),
    withExportToPdf(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_pdf" expected to be of type "string"';
      {
        export_to_pdf: converted,
      }
    ),
    withExportToPdfInScheduledReports(value):: (
      local converted = value;
      assert std.isString(converted) : '"export_to_pdf_in_scheduled_reports" expected to be of type "string"';
      {
        export_to_pdf_in_scheduled_reports: converted,
      }
    ),
    withIncludeContentInScheduledReportsEmail(value):: (
      local converted = value;
      assert std.isString(converted) : '"include_content_in_scheduled_reports_email" expected to be of type "string"';
      {
        include_content_in_scheduled_reports_email: converted,
      }
    ),
    withPrintReports(value):: (
      local converted = value;
      assert std.isString(converted) : '"print_reports" expected to be of type "string"';
      {
        print_reports: converted,
      }
    ),
    withRenameSharedFolders(value):: (
      local converted = value;
      assert std.isString(converted) : '"rename_shared_folders" expected to be of type "string"';
      {
        rename_shared_folders: converted,
      }
    ),
    withShareAnalyses(value):: (
      local converted = value;
      assert std.isString(converted) : '"share_analyses" expected to be of type "string"';
      {
        share_analyses: converted,
      }
    ),
    withShareDashboards(value):: (
      local converted = value;
      assert std.isString(converted) : '"share_dashboards" expected to be of type "string"';
      {
        share_dashboards: converted,
      }
    ),
    withShareDataSources(value):: (
      local converted = value;
      assert std.isString(converted) : '"share_data_sources" expected to be of type "string"';
      {
        share_data_sources: converted,
      }
    ),
    withShareDatasets(value):: (
      local converted = value;
      assert std.isString(converted) : '"share_datasets" expected to be of type "string"';
      {
        share_datasets: converted,
      }
    ),
    withSubscribeDashboardEmailReports(value):: (
      local converted = value;
      assert std.isString(converted) : '"subscribe_dashboard_email_reports" expected to be of type "string"';
      {
        subscribe_dashboard_email_reports: converted,
      }
    ),
    withViewAccountSpiceCapacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"view_account_spice_capacity" expected to be of type "string"';
      {
        view_account_spice_capacity: converted,
      }
    ),
  },
  withCapabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capabilities: value,
    }
  ),
  withCapabilitiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capabilities+: converted,
    }
  ),
}
