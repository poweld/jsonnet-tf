{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_devopsguru_service_integration",
          type:: "resource",
          attributes:: ["id", "region"],
        },
      },
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
  kms_server_side_encryption:: {
    local block = self,
    new():: (
      {}
    ),
    withKmsKeyId(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
      {
        kms_key_id: converted,
      }
    ),
    withOptInStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
      {
        opt_in_status: converted,
      }
    ),
    withType(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  logs_anomaly_detection:: {
    local block = self,
    new():: (
      {}
    ),
    withOptInStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
      {
        opt_in_status: converted,
      }
    ),
  },
  ops_center:: {
    local block = self,
    new():: (
      {}
    ),
    withOptInStatus(value):: (
      local converted = value;
      assert std.isString(converted) : '"opt_in_status" expected to be of type "string"';
      {
        opt_in_status: converted,
      }
    ),
  },
  withKmsServerSideEncryption(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_server_side_encryption: value,
    }
  ),
  withLogsAnomalyDetection(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_anomaly_detection: value,
    }
  ),
  withOpsCenter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ops_center: value,
    }
  ),
  withKmsServerSideEncryptionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kms_server_side_encryption+: converted,
    }
  ),
  withLogsAnomalyDetectionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logs_anomaly_detection+: converted,
    }
  ),
  withOpsCenterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ops_center+: converted,
    }
  ),
}
