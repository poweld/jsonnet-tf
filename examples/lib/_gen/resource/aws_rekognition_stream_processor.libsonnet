{
  local block = self,
  new(terraformName, name, roleArn):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_rekognition_stream_processor",
          type:: "resource",
          attributes:: ["arn", "kms_key_id", "name", "region", "role_arn", "stream_processor_arn", "tags", "tags_all"],
        },
      },
    }
    + block.withName(name)
    + block.withRoleArn(roleArn)
  ),
  "#withKmsKeyId":: "The identifier for your AWS Key Management Service key (AWS KMS key). You can supply the Amazon Resource Name (ARN) of your KMS key, the ID of your KMS key, an alias for your KMS key, or an alias ARN.",
  withKmsKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  "#withName":: "An identifier you assign to the stream processor.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  "#withRoleArn":: "The Amazon Resource Number (ARN) of the IAM role that allows access to the stream processor.",
  withRoleArn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  data_sharing_preference:: {
    local block = self,
    new(optIn):: (
      {}
      + block.withOptIn(optIn)
    ),
    "#withOptIn":: "Do you want to share data with Rekognition to improve model performance.",
    withOptIn(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"opt_in" expected to be of type "bool"';
      {
        opt_in: converted,
      }
    ),
  },
  input:: {
    local block = self,
    new():: (
      {}
    ),
    kinesis_video_stream:: {
      local block = self,
      new(arn):: (
        {}
        + block.withArn(arn)
      ),
      "#withArn":: "ARN of the Kinesis video stream stream that streams the source video.",
      withArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    withKinesisVideoStream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream: value,
      }
    ),
    withKinesisVideoStreamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_video_stream+: converted,
      }
    ),
  },
  notification_channel:: {
    local block = self,
    new():: (
      {}
    ),
    "#withSnsTopicArn":: "The Amazon Resource Number (ARN) of the Amazon Amazon Simple Notification Service topic to which Amazon Rekognition posts the completion status.",
    withSnsTopicArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
      {
        sns_topic_arn: converted,
      }
    ),
  },
  output:: {
    local block = self,
    new():: (
      {}
    ),
    kinesis_data_stream:: {
      local block = self,
      new():: (
        {}
      ),
      "#withArn":: "ARN of the output Amazon Kinesis Data Streams stream.",
      withArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    s3_destination:: {
      local block = self,
      new():: (
        {}
      ),
      "#withBucket":: "The name of the Amazon S3 bucket you want to associate with the streaming video project.",
      withBucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket" expected to be of type "string"';
        {
          bucket: converted,
        }
      ),
      "#withKeyPrefix":: "The prefix value of the location within the bucket that you want the information to be published to.",
      withKeyPrefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"key_prefix" expected to be of type "string"';
        {
          key_prefix: converted,
        }
      ),
    },
    withKinesisDataStream(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream: value,
      }
    ),
    withS3Destination(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination: value,
      }
    ),
    withKinesisDataStreamMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_data_stream+: converted,
      }
    ),
    withS3DestinationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_destination+: converted,
      }
    ),
  },
  regions_of_interest:: {
    local block = self,
    new():: (
      {}
    ),
    bounding_box:: {
      local block = self,
      new():: (
        {}
      ),
      "#withHeight":: "Height of the bounding box as a ratio of the overall image height.",
      withHeight(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"height" expected to be of type "number"';
        {
          height: converted,
        }
      ),
      "#withLeft":: "Left coordinate of the bounding box as a ratio of overall image width.",
      withLeft(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"left" expected to be of type "number"';
        {
          left: converted,
        }
      ),
      "#withTop":: "Top coordinate of the bounding box as a ratio of overall image height.",
      withTop(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"top" expected to be of type "number"';
        {
          top: converted,
        }
      ),
      "#withWidth":: "Width of the bounding box as a ratio of the overall image width.",
      withWidth(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"width" expected to be of type "number"';
        {
          width: converted,
        }
      ),
    },
    polygon:: {
      local block = self,
      new():: (
        {}
      ),
      "#withX":: "The value of the X coordinate for a point on a Polygon.",
      withX(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"x" expected to be of type "number"';
        {
          x: converted,
        }
      ),
      "#withY":: "The value of the Y coordinate for a point on a Polygon.",
      withY(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"y" expected to be of type "number"';
        {
          y: converted,
        }
      ),
    },
    withBoundingBox(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bounding_box: value,
      }
    ),
    withPolygon(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        polygon: value,
      }
    ),
    withBoundingBoxMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        bounding_box+: converted,
      }
    ),
    withPolygonMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        polygon+: converted,
      }
    ),
  },
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    connected_home:: {
      local block = self,
      new():: (
        {}
      ),
      "#withLabels":: "Specifies what you want to detect in the video, such as people, packages, or pets.",
      withLabels(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"labels" expected to be of type "list"';
        {
          labels: converted,
        }
      ),
      "#withLabelsMixin":: "Specifies what you want to detect in the video, such as people, packages, or pets.",
      withLabelsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"labels" expected to be of type "list"';
        {
          labels+: converted,
        }
      ),
      "#withMinConfidence":: "The minimum confidence required to label an object in the video.",
      withMinConfidence(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_confidence" expected to be of type "number"';
        {
          min_confidence: converted,
        }
      ),
    },
    face_search:: {
      local block = self,
      new(collectionId):: (
        {}
        + block.withCollectionId(collectionId)
      ),
      "#withCollectionId":: "The ID of a collection that contains faces that you want to search for.",
      withCollectionId(value):: (
        local converted = value;
        assert std.isString(converted) : '"collection_id" expected to be of type "string"';
        {
          collection_id: converted,
        }
      ),
      "#withFaceMatchThreshold":: "Minimum face match confidence score that must be met to return a result for a recognized face.",
      withFaceMatchThreshold(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"face_match_threshold" expected to be of type "number"';
        {
          face_match_threshold: converted,
        }
      ),
    },
    withConnectedHome(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connected_home: value,
      }
    ),
    withFaceSearch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        face_search: value,
      }
    ),
    withConnectedHomeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connected_home+: converted,
      }
    ),
    withFaceSearchMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        face_search+: converted,
      }
    ),
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
    "#withDelete":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    "#withUpdate":: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withDataSharingPreference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_sharing_preference: value,
    }
  ),
  withInput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input: value,
    }
  ),
  withNotificationChannel(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_channel: value,
    }
  ),
  withOutput(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output: value,
    }
  ),
  withRegionsOfInterest(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regions_of_interest: value,
    }
  ),
  withSettings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withDataSharingPreferenceMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_sharing_preference+: converted,
    }
  ),
  withInputMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input+: converted,
    }
  ),
  withNotificationChannelMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_channel+: converted,
    }
  ),
  withOutputMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      output+: converted,
    }
  ),
  withRegionsOfInterestMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regions_of_interest+: converted,
    }
  ),
  withSettingsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings+: converted,
    }
  ),
}
