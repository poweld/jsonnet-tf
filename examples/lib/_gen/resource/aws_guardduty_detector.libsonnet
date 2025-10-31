{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_guardduty_detector",
          type:: "resource",
          attributes:: ["account_id", "arn", "enable", "finding_publishing_frequency", "id", "region", "tags", "tags_all"],
        },
      },
    }
  ),
  withEnable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
    {
      enable: converted,
    }
  ),
  withFindingPublishingFrequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"finding_publishing_frequency" expected to be of type "string"';
    {
      finding_publishing_frequency: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  datasources:: {
    local block = self,
    new():: (
      {}
    ),
    kubernetes:: {
      local block = self,
      new():: (
        {}
      ),
      audit_logs:: {
        local block = self,
        new(enable):: (
          {}
          + block.withEnable(enable)
        ),
        withEnable(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
          {
            enable: converted,
          }
        ),
      },
      withAuditLogs(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit_logs: value,
        }
      ),
      withAuditLogsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          audit_logs+: converted,
        }
      ),
    },
    malware_protection:: {
      local block = self,
      new():: (
        {}
      ),
      scan_ec2_instance_with_findings:: {
        local block = self,
        new():: (
          {}
        ),
        ebs_volumes:: {
          local block = self,
          new(enable):: (
            {}
            + block.withEnable(enable)
          ),
          withEnable(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
            {
              enable: converted,
            }
          ),
        },
        withEbsVolumes(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebs_volumes: value,
          }
        ),
        withEbsVolumesMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ebs_volumes+: converted,
          }
        ),
      },
      withScanEc2InstanceWithFindings(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scan_ec2_instance_with_findings: value,
        }
      ),
      withScanEc2InstanceWithFindingsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          scan_ec2_instance_with_findings+: converted,
        }
      ),
    },
    s3_logs:: {
      local block = self,
      new(enable):: (
        {}
        + block.withEnable(enable)
      ),
      withEnable(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable" expected to be of type "bool"';
        {
          enable: converted,
        }
      ),
    },
    withKubernetes(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kubernetes: value,
      }
    ),
    withMalwareProtection(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_protection: value,
      }
    ),
    withS3Logs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs: value,
      }
    ),
    withKubernetesMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kubernetes+: converted,
      }
    ),
    withMalwareProtectionMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        malware_protection+: converted,
      }
    ),
    withS3LogsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_logs+: converted,
      }
    ),
  },
  withDatasources(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      datasources: value,
    }
  ),
  withDatasourcesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      datasources+: converted,
    }
  ),
}
