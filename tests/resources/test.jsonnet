local aa = import "artifacts/registry.terraform.io/hashicorp/aws/resource/aws_accessanalyzer_analyzer.libsonnet";

local aws = import "artifacts/registry.terraform.io/hashicorp/aws/provider.libsonnet";
local resources = providers["resources"];

{
  provider: (
    aws.new()
    + aws.with_access_key("MY_ACCESS_KEY")
    // + aws.with_access_key(123)
  ),

  accessanalyzer: (
    local configuration = aa.configuration.new()
    + aa.configuration.with_internal_access(
      aa.configuration.internal_access.new()
      + aa.configuration.internal_access.with_analysis_rule(
        aa.configuration.internal_access.analysis_rule.new()
        + aa.configuration.internal_access.analysis_rule.with_inclusion(
          aa.configuration.internal_access.analysis_rule.inclusion.new()
          + aa.configuration.internal_access.analysis_rule.inclusion.with_account_ids("accountA")
          + aa.configuration.internal_access.analysis_rule.inclusion.with_account_ids_mixin(["accountB", "accountC"])
          + aa.configuration.internal_access.analysis_rule.inclusion.with_account_ids_mixin("accountD")
        )
      )
    );
    aa.new("my_analyzer")
    + aa.with_configuration(configuration)
  ),
}
