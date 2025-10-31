local aws = import "lib/_gen/aws.libsonnet";
local jsonnetTf = import "lib/jsonnet_terraform.libsonnet";

local terraformConfig(bucket, path, region, version="0.12.1") = {
  "terraform": {
    "required_version": ">= %s" % version,
    "backend": {
      "s3": {
        "region": region,
        "bucket": bucket,
        "key": path,
      },
    },
  },
};

local region = "us-east-1";
local root = {
  network: import "network.libsonnet",
  lambdaLib:: import "lambda.libsonnet",
  lambda: self.lambdaLib(self.iam.role),
  iam: import "iam.libsonnet",
  provider: aws.provider.new(terraformName="aws")
  + aws.provider.withRegion(region),
};

jsonnetTf.toTerraform(root)
+ terraformConfig(region=region, bucket="my-bucket", path="terraform-state-path")
