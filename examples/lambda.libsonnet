local aws = import "lib/_gen/aws.libsonnet";
local jstf = import "lib/jsonnet_terraform.libsonnet";

// TODO should I just use a t2/t3.micro instead? Have 750 hours per month of one (730 hours in a month)
function(role) {
  lambda: aws.resource.awsLambdaFunction.new("dice-roller", functionName="dice-roller", role=jstf.outputReference(role, attribute="id")),
}
