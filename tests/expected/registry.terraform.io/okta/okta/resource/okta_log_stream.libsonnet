{
  local block = self,

  new(terraformName, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "okta_log_stream",
          type:: "resource",
          attributes:: ["id", "name", "status", "type"],
        },
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),

  "#withName":: "Unique name for the Log Stream object",
  withName(value):: (
    assert std.isString(value) : '"name" expected to be of type "string"';

    {
      name: value,
    }
  ),

  "#withStatus":: "Stream status",
  withStatus(value):: (
    assert std.isString(value) : '"status" expected to be of type "string"';

    {
      status: value,
    }
  ),

  "#withType":: "Streaming provider used - 'aws_eventbridge' or 'splunk_cloud_logstreaming'",
  withType(value):: (
    assert std.isString(value) : '"type" expected to be of type "string"';

    {
      type: value,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },

  settings:: {
    local block = self,

    new():: (
      {}
    ),

    "#withAccountId":: "AWS account ID. Required only for 'aws_eventbridge' type",
    withAccountId(value):: (
      assert std.isString(value) : '"account_id" expected to be of type "string"';

      {
        account_id: value,
      }
    ),

    "#withEdition":: "Edition of the Splunk Cloud instance. Could be one of: 'aws', 'aws_govcloud', 'gcp'. Required only for 'splunk_cloud_logstreaming' type",
    withEdition(value):: (
      assert std.isString(value) : '"edition" expected to be of type "string"';

      {
        edition: value,
      }
    ),

    "#withEventSourceName":: "An alphanumeric name (no spaces) to identify this event source in AWS EventBridge. Required only for 'aws_eventbridge' type",
    withEventSourceName(value):: (
      assert std.isString(value) : '"event_source_name" expected to be of type "string"';

      {
        event_source_name: value,
      }
    ),

    "#withHost":: "The domain name for Splunk Cloud instance. Don't include http or https in the string. For example: 'acme.splunkcloud.com'. Required only for 'splunk_cloud_logstreaming' type",
    withHost(value):: (
      assert std.isString(value) : '"host" expected to be of type "string"';

      {
        host: value,
      }
    ),

    "#withRegion":: "The destination AWS region where event source is located. Required only for 'aws_eventbridge' type",
    withRegion(value):: (
      assert std.isString(value) : '"region" expected to be of type "string"';

      {
        region: value,
      }
    ),

    "#withToken":: "The HEC token for your Splunk Cloud HTTP Event Collector. Required only for 'splunk_cloud_logstreaming' type",
    withToken(value):: (
      assert std.isString(value) : '"token" expected to be of type "string"';

      {
        token: value,
      }
    ),
  },
  withSettings(value):: (
    {
      settings: value,
    }
  ),
}
