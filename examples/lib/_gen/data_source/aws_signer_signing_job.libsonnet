{
  local block = self,
  new(terraformName, jobId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_signer_signing_job",
          type:: "data",
          attributes:: ["completed_at", "created_at", "id", "job_id", "job_invoker", "job_owner", "platform_display_name", "platform_id", "profile_name", "profile_version", "region", "requested_by", "revocation_record", "signature_expires_at", "signed_object", "source", "status", "status_reason"],
        },
      },
    }
    + block.withJobId(jobId)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withJobId(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_id" expected to be of type "string"';
    {
      job_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
}
