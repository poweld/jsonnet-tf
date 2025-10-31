{
  local block = self,
  new(terraformName, languageCode, vocabularyFilterName):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_transcribe_vocabulary_filter",
          type:: "resource",
          attributes:: ["arn", "download_uri", "id", "language_code", "region", "tags", "tags_all", "vocabulary_filter_file_uri", "vocabulary_filter_name", "words"],
        },
      },
    }
    + block.withLanguageCode(languageCode)
    + block.withVocabularyFilterName(vocabularyFilterName)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withLanguageCode(value):: (
    local converted = value;
    assert std.isString(converted) : '"language_code" expected to be of type "string"';
    {
      language_code: converted,
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
  withVocabularyFilterFileUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"vocabulary_filter_file_uri" expected to be of type "string"';
    {
      vocabulary_filter_file_uri: converted,
    }
  ),
  withVocabularyFilterName(value):: (
    local converted = value;
    assert std.isString(converted) : '"vocabulary_filter_name" expected to be of type "string"';
    {
      vocabulary_filter_name: converted,
    }
  ),
  withWords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"words" expected to be of type "list"';
    {
      words: converted,
    }
  ),
  withWordsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"words" expected to be of type "list"';
    {
      words+: converted,
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
