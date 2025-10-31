{
  local block = self,
  new(terraformName, collectionId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rekognition_collection",
          type:: "resource",
          attributes:: ["arn", "collection_id", "face_model_version", "id", "region", "tags", "tags_all"],
        },
      },
    }
    + block.withCollectionId(collectionId)
  ),
  "#withCollectionId":: "The name of the Rekognition collection",
  withCollectionId(value):: (
    local converted = value;
    assert std.isString(converted) : '"collection_id" expected to be of type "string"';
    {
      collection_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    "#withCreate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
