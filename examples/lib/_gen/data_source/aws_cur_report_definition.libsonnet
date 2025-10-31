{
  local block = self,
  new(terraformName, reportName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_cur_report_definition",
          type:: "data",
          attributes:: ["additional_artifacts", "additional_schema_elements", "compression", "format", "id", "refresh_closed_reports", "report_name", "report_versioning", "s3_bucket", "s3_prefix", "s3_region", "tags", "time_unit"],
        },
      },
    }
    + block.withReportName(reportName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withReportName(value):: (
    local converted = value;
    assert std.isString(converted) : '"report_name" expected to be of type "string"';
    {
      report_name: converted,
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
}
