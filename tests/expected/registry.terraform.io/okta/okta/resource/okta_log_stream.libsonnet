{
  local block = self,
  new(name, type):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_log_stream",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformName:: name,
        terraformAttributes:: ["name", "id", "status", "type"],
      },
    }
    + block.withName(name)
    + block.withType(type)
  ),
  "#withName":: "Unique name for the Log Stream object",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withStatus":: "Stream status",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "Streaming provider used - 'aws_eventbridge' or 'splunk_cloud_logstreaming'",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  settings:: {
    local block = self,
    new(name):: (
      {
        jsonnetTfMetadata:: {
          terraformObject:: "okta_log_stream",
          terraformType:: "resource",
          terraformPrefix:: "",
          terraformName:: name,
          terraformAttributes:: ["account_id", "edition", "event_source_name", "host", "region", "token"],
        },
      }
    ),
    "#withAccountId":: "AWS account ID. Required only for 'aws_eventbridge' type",
    withAccountId(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    "#withEdition":: "Edition of the Splunk Cloud instance. Could be one of: 'aws', 'aws_govcloud', 'gcp'. Required only for 'splunk_cloud_logstreaming' type",
    withEdition(value):: (
      local converted = value;
      assert std.isString(converted) : '"edition" expected to be of type "string"';
      {
        edition: converted,
      }
    ),
    "#withEventSourceName":: "An alphanumeric name (no spaces) to identify this event source in AWS EventBridge. Required only for 'aws_eventbridge' type",
    withEventSourceName(value):: (
      local converted = value;
      assert std.isString(converted) : '"event_source_name" expected to be of type "string"';
      {
        event_source_name: converted,
      }
    ),
    "#withHost":: "The domain name for Splunk Cloud instance. Don't include http or https in the string. For example: 'acme.splunkcloud.com'. Required only for 'splunk_cloud_logstreaming' type",
    withHost(value):: (
      local converted = value;
      assert std.isString(converted) : '"host" expected to be of type "string"';
      {
        host: converted,
      }
    ),
    "#withRegion":: "The destination AWS region where event source is located. Required only for 'aws_eventbridge' type",
    withRegion(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    "#withToken":: "The HEC token for your Splunk Cloud HTTP Event Collector. Required only for 'splunk_cloud_logstreaming' type",
    withToken(value):: (
      local converted = value;
      assert std.isString(converted) : '"token" expected to be of type "string"';
      {
        token: converted,
      }
    ),
  },
  withSettings(value):: (
    local converted = value;
    {
      settings: value,
    }
  ),
}
