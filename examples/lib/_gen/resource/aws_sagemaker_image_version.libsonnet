{
  local block = self,
  new(terraformName, baseImage, imageName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_sagemaker_image_version",
          type:: "resource",
          attributes:: ["aliases", "arn", "base_image", "container_image", "horovod", "id", "image_arn", "image_name", "job_type", "ml_framework", "processor", "programming_lang", "region", "release_notes", "vendor_guidance", "version"],
        },
      },
    }
    + block.withBaseImage(baseImage)
    + block.withImageName(imageName)
  ),
  withAliases(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases: converted,
    }
  ),
  withAliasesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"aliases" expected to be of type "set"';
    {
      aliases+: converted,
    }
  ),
  withBaseImage(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_image" expected to be of type "string"';
    {
      base_image: converted,
    }
  ),
  withHorovod(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"horovod" expected to be of type "bool"';
    {
      horovod: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withImageName(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_name" expected to be of type "string"';
    {
      image_name: converted,
    }
  ),
  withJobType(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_type" expected to be of type "string"';
    {
      job_type: converted,
    }
  ),
  withMlFramework(value):: (
    local converted = value;
    assert std.isString(converted) : '"ml_framework" expected to be of type "string"';
    {
      ml_framework: converted,
    }
  ),
  withProcessor(value):: (
    local converted = value;
    assert std.isString(converted) : '"processor" expected to be of type "string"';
    {
      processor: converted,
    }
  ),
  withProgrammingLang(value):: (
    local converted = value;
    assert std.isString(converted) : '"programming_lang" expected to be of type "string"';
    {
      programming_lang: converted,
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
  withReleaseNotes(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_notes" expected to be of type "string"';
    {
      release_notes: converted,
    }
  ),
  withVendorGuidance(value):: (
    local converted = value;
    assert std.isString(converted) : '"vendor_guidance" expected to be of type "string"';
    {
      vendor_guidance: converted,
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
