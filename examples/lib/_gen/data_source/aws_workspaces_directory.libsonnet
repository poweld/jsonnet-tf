{
  local block = self,
  new(terraformName, directoryId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_workspaces_directory",
          type:: "data",
          attributes:: ["active_directory_config", "alias", "certificate_based_auth_properties", "customer_user_name", "directory_id", "directory_name", "directory_type", "dns_ip_addresses", "iam_role_id", "id", "ip_group_ids", "region", "registration_code", "saml_properties", "self_service_permissions", "subnet_ids", "tags", "user_identity_type", "workspace_access_properties", "workspace_creation_properties", "workspace_directory_description", "workspace_directory_name", "workspace_security_group_id", "workspace_type"],
        },
      },
    }
    + block.withDirectoryId(directoryId)
  ),
  withDirectoryId(value):: (
    local converted = value;
    assert std.isString(converted) : '"directory_id" expected to be of type "string"';
    {
      directory_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
}
