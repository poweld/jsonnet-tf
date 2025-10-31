local aws = import "lib/_gen/aws.libsonnet";
local jstf = import "lib/jsonnet_terraform.libsonnet";

{
  local policy = aws.dataSource.awsIamPolicyDocument,

  policyPrincipals:: policy.statement.principals.new(identifiers=["lambda.amazonaws.com"], type="Service"),
  policyStatement:: policy.statement.new()
  + policy.statement.withEffect("Allow")
  + policy.statement.withPrincipals(self.policyPrincipals)
  + policy.statement.withActions("sts:AssumeRole"),

  policy: policy.new("dice-roller")
  + policy.withStatement(self.policyStatement),

  role: aws.resource.awsIamRole.new("dice-roller", assumeRolePolicy=jstf.outputReference(self.policy, attribute="json"))
  + aws.resource.awsIamRole.withName("dice-roller"),
}
