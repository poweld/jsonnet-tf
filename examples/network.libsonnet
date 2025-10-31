local aws = import "lib/_gen/aws.libsonnet";

{
  vpc: aws.resource.awsVpc.new("dice-roller")
  + aws.resource.awsVpc.withCidrBlock("10.100.0.0/16")
  + aws.resource.awsVpc.withTags({
    Name: "dice-roller",
  }),
}
