{
  local block = self,
  new(terraformName, allocatedStorage, bucket, dbInstanceType, name, organization, password, username, vpcSecurityGroupIds, vpcSubnetIds):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_timestreaminfluxdb_db_instance",
          type:: "resource",
          attributes:: ["allocated_storage", "arn", "availability_zone", "bucket", "db_instance_type", "db_parameter_group_identifier", "db_storage_type", "deployment_type", "endpoint", "id", "influx_auth_parameters_secret_arn", "name", "network_type", "organization", "password", "port", "publicly_accessible", "region", "secondary_availability_zone", "tags", "tags_all", "username", "vpc_security_group_ids", "vpc_subnet_ids"],
        },
      },
    }
    + block.withAllocatedStorage(allocatedStorage)
    + block.withBucket(bucket)
    + block.withDbInstanceType(dbInstanceType)
    + block.withName(name)
    + block.withOrganization(organization)
    + block.withPassword(password)
    + block.withUsername(username)
    + block.withVpcSecurityGroupIds(vpcSecurityGroupIds)
    + block.withVpcSubnetIds(vpcSubnetIds)
  ),
  "#withAllocatedStorage":: "The amount of storage to allocate for your DB storage type in GiB (gibibytes).",
  withAllocatedStorage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
    }
  ),
  "#withBucket":: "The name of the initial InfluxDB bucket. All InfluxDB data is stored in a bucket.  \t\t\t\t\tA bucket combines the concept of a database and a retention period (the duration of time  \t\t\t\t\tthat each data point persists). A bucket belongs to an organization.",
  withBucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  "#withDbInstanceType":: "The Timestream for InfluxDB DB instance type to run InfluxDB on.",
  withDbInstanceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_type" expected to be of type "string"';
    {
      db_instance_type: converted,
    }
  ),
  "#withDbParameterGroupIdentifier":: "The id of the DB parameter group assigned to your DB instance.",
  withDbParameterGroupIdentifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_parameter_group_identifier" expected to be of type "string"';
    {
      db_parameter_group_identifier: converted,
    }
  ),
  "#withDbStorageType":: "The Timestream for InfluxDB DB storage type to read and write InfluxDB data.  \t\t\t\t\tYou can choose between 3 different types of provisioned Influx IOPS included storage according  \t\t\t\t\tto your workloads requirements: Influx IO Included 3000 IOPS, Influx IO Included 12000 IOPS,  \t\t\t\t\tInflux IO Included 16000 IOPS.",
  withDbStorageType(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_storage_type" expected to be of type "string"';
    {
      db_storage_type: converted,
    }
  ),
  "#withDeploymentType":: "Specifies whether the DB instance will be deployed as a standalone instance or  \t\t\t\t\twith a Multi-AZ standby for high availability.",
  withDeploymentType(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
    {
      deployment_type: converted,
    }
  ),
  "#withName":: "The name that uniquely identifies the DB instance when interacting with the  \t\t\t\t\tAmazon Timestream for InfluxDB API and CLI commands. This name will also be a  \t\t\t\t\tprefix included in the endpoint. DB instance names must be unique per customer  \t\t\t\t\tand per region.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withNetworkType":: "Specifies whether the networkType of the Timestream for InfluxDB instance is  \t\t\t\t\tIPV4, which can communicate over IPv4 protocol only, or DUAL, which can communicate  \t\t\t\t\tover both IPv4 and IPv6 protocols.",
  withNetworkType(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  "#withOrganization":: "The name of the initial organization for the initial admin user in InfluxDB. An  \t\t\t\t\tInfluxDB organization is a workspace for a group of users.",
  withOrganization(value):: (
    local converted = value;
    assert std.isString(converted) : '"organization" expected to be of type "string"';
    {
      organization: converted,
    }
  ),
  "#withPassword":: "The password of the initial admin user created in InfluxDB. This password will  \t\t\t\t\tallow you to access the InfluxDB UI to perform various administrative tasks and  \t\t\t\t\talso use the InfluxDB CLI to create an operator token. These attributes will be  \t\t\t\t\tstored in a Secret created in AWS SecretManager in your account.",
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  "#withPort":: "The port number on which InfluxDB accepts connections.",
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  "#withPubliclyAccessible":: "Configures the DB instance with a public IP to facilitate access.",
  withPubliclyAccessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  "#withUsername":: "The username of the initial admin user created in InfluxDB.  \t\t\t\t\tMust start with a letter and can't end with a hyphen or contain two  \t\t\t\t\tconsecutive hyphens. For example, my-user1. This username will allow  \t\t\t\t\tyou to access the InfluxDB UI to perform various administrative tasks  \t\t\t\t\tand also use the InfluxDB CLI to create an operator token. These  \t\t\t\t\tattributes will be stored in a Secret created in Amazon Secrets  \t\t\t\t\tManager in your account",
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
  "#withVpcSecurityGroupIds":: "A list of VPC security group IDs to associate with the DB instance.",
  withVpcSecurityGroupIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  "#withVpcSecurityGroupIdsMixin":: "A list of VPC security group IDs to associate with the DB instance.",
  withVpcSecurityGroupIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
  "#withVpcSubnetIds":: "A list of VPC subnet IDs to associate with the DB instance. Provide at least  \t\t\t\t\ttwo VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.",
  withVpcSubnetIds(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids: converted,
    }
  ),
  "#withVpcSubnetIdsMixin":: "A list of VPC subnet IDs to associate with the DB instance. Provide at least  \t\t\t\t\ttwo VPC subnet IDs in different availability zones when deploying with a Multi-AZ standby.",
  withVpcSubnetIdsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnet_ids" expected to be of type "set"';
    {
      vpc_subnet_ids+: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  log_delivery_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    s3_configuration:: {
      local block = self,
      new(bucketName, enabled):: (
        {}
        + block.withBucketName(bucketName)
        + block.withEnabled(enabled)
      ),
      "#withBucketName":: "The name of the S3 bucket to deliver logs to.",
      withBucketName(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      "#withEnabled":: "Indicates whether log delivery to the S3 bucket is enabled.",
      withEnabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
    },
    withS3Configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    withS3ConfigurationMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
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
  withLogDeliveryConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withLogDeliveryConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration+: converted,
    }
  ),
}
