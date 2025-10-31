{
  local block = self,
  new(terraformName, dataSourceId, name, type):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_data_source",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "data_source_id", "id", "name", "region", "tags", "tags_all", "type"],
        },
      },
    }
    + block.withDataSourceId(dataSourceId)
    + block.withName(name)
    + block.withType(type)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withDataSourceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_source_id" expected to be of type "string"';
    {
      data_source_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
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
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  credentials:: {
    local block = self,
    new():: (
      {}
    ),
    withCopySourceArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"copy_source_arn" expected to be of type "string"';
      {
        copy_source_arn: converted,
      }
    ),
    withSecretArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secret_arn" expected to be of type "string"';
      {
        secret_arn: converted,
      }
    ),
    credential_pair:: {
      local block = self,
      new(password, username):: (
        {}
        + block.withPassword(password)
        + block.withUsername(username)
      ),
      withPassword(value):: (
        local converted = value;
        assert std.isString(converted) : '"password" expected to be of type "string"';
        {
          password: converted,
        }
      ),
      withUsername(value):: (
        local converted = value;
        assert std.isString(converted) : '"username" expected to be of type "string"';
        {
          username: converted,
        }
      ),
    },
    withCredentialPair(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        credential_pair: value,
      }
    ),
    withCredentialPairMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        credential_pair+: converted,
      }
    ),
  },
  parameters:: {
    local block = self,
    new():: (
      {}
    ),
    amazon_elasticsearch:: {
      local block = self,
      new(domain):: (
        {}
        + block.withDomain(domain)
      ),
      withDomain(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain" expected to be of type "string"';
        {
          domain: converted,
        }
      ),
    },
    athena:: {
      local block = self,
      new():: (
        {}
      ),
      withWorkGroup(value):: (
        local converted = value;
        assert std.isString(converted) : '"work_group" expected to be of type "string"';
        {
          work_group: converted,
        }
      ),
    },
    aurora:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    aurora_postgresql:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    aws_iot_analytics:: {
      local block = self,
      new(dataSetName):: (
        {}
        + block.withDataSetName(dataSetName)
      ),
      withDataSetName(value):: (
        local converted = value;
        assert std.isString(converted) : '"data_set_name" expected to be of type "string"';
        {
          data_set_name: converted,
        }
      ),
    },
    databricks:: {
      local block = self,
      new(host, port, sqlEndpointPath):: (
        {}
        + block.withHost(host)
        + block.withPort(port)
        + block.withSqlEndpointPath(sqlEndpointPath)
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
      withSqlEndpointPath(value):: (
        local converted = value;
        assert std.isString(converted) : '"sql_endpoint_path" expected to be of type "string"';
        {
          sql_endpoint_path: converted,
        }
      ),
    },
    jira:: {
      local block = self,
      new(siteBaseUrl):: (
        {}
        + block.withSiteBaseUrl(siteBaseUrl)
      ),
      withSiteBaseUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"site_base_url" expected to be of type "string"';
        {
          site_base_url: converted,
        }
      ),
    },
    maria_db:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    mysql:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    oracle:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    postgresql:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    presto:: {
      local block = self,
      new(catalog, host, port):: (
        {}
        + block.withCatalog(catalog)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withCatalog(value):: (
        local converted = value;
        assert std.isString(converted) : '"catalog" expected to be of type "string"';
        {
          catalog: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    rds:: {
      local block = self,
      new(database, instanceId):: (
        {}
        + block.withDatabase(database)
        + block.withInstanceId(instanceId)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withInstanceId(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_id" expected to be of type "string"';
        {
          instance_id: converted,
        }
      ),
    },
    redshift:: {
      local block = self,
      new(database):: (
        {}
        + block.withDatabase(database)
      ),
      withClusterId(value):: (
        local converted = value;
        assert std.isString(converted) : '"cluster_id" expected to be of type "string"';
        {
          cluster_id: converted,
        }
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    s3:: {
      local block = self,
      new():: (
        {}
      ),
      withRoleArn(value):: (
        local converted = value;
        assert std.isString(converted) : '"role_arn" expected to be of type "string"';
        {
          role_arn: converted,
        }
      ),
      manifest_file_location:: {
        local block = self,
        new(bucket, key):: (
          {}
          + block.withBucket(bucket)
          + block.withKey(key)
        ),
        withBucket(value):: (
          local converted = value;
          assert std.isString(converted) : '"bucket" expected to be of type "string"';
          {
            bucket: converted,
          }
        ),
        withKey(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
          }
        ),
      },
      withManifestFileLocation(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          manifest_file_location: value,
        }
      ),
      withManifestFileLocationMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          manifest_file_location+: converted,
        }
      ),
    },
    service_now:: {
      local block = self,
      new(siteBaseUrl):: (
        {}
        + block.withSiteBaseUrl(siteBaseUrl)
      ),
      withSiteBaseUrl(value):: (
        local converted = value;
        assert std.isString(converted) : '"site_base_url" expected to be of type "string"';
        {
          site_base_url: converted,
        }
      ),
    },
    snowflake:: {
      local block = self,
      new(database, host, warehouse):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withWarehouse(warehouse)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withWarehouse(value):: (
        local converted = value;
        assert std.isString(converted) : '"warehouse" expected to be of type "string"';
        {
          warehouse: converted,
        }
      ),
    },
    spark:: {
      local block = self,
      new(host, port):: (
        {}
        + block.withHost(host)
        + block.withPort(port)
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    sql_server:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    teradata:: {
      local block = self,
      new(database, host, port):: (
        {}
        + block.withDatabase(database)
        + block.withHost(host)
        + block.withPort(port)
      ),
      withDatabase(value):: (
        local converted = value;
        assert std.isString(converted) : '"database" expected to be of type "string"';
        {
          database: converted,
        }
      ),
      withHost(value):: (
        local converted = value;
        assert std.isString(converted) : '"host" expected to be of type "string"';
        {
          host: converted,
        }
      ),
      withPort(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"port" expected to be of type "number"';
        {
          port: converted,
        }
      ),
    },
    twitter:: {
      local block = self,
      new(maxRows, query):: (
        {}
        + block.withMaxRows(maxRows)
        + block.withQuery(query)
      ),
      withMaxRows(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_rows" expected to be of type "number"';
        {
          max_rows: converted,
        }
      ),
      withQuery(value):: (
        local converted = value;
        assert std.isString(converted) : '"query" expected to be of type "string"';
        {
          query: converted,
        }
      ),
    },
    withAmazonElasticsearch(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_elasticsearch: value,
      }
    ),
    withAthena(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        athena: value,
      }
    ),
    withAurora(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora: value,
      }
    ),
    withAuroraPostgresql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora_postgresql: value,
      }
    ),
    withAwsIotAnalytics(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_iot_analytics: value,
      }
    ),
    withDatabricks(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        databricks: value,
      }
    ),
    withJira(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jira: value,
      }
    ),
    withMariaDb(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maria_db: value,
      }
    ),
    withMysql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mysql: value,
      }
    ),
    withOracle(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oracle: value,
      }
    ),
    withPostgresql(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        postgresql: value,
      }
    ),
    withPresto(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        presto: value,
      }
    ),
    withRds(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds: value,
      }
    ),
    withRedshift(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift: value,
      }
    ),
    withS3(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3: value,
      }
    ),
    withServiceNow(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_now: value,
      }
    ),
    withSnowflake(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake: value,
      }
    ),
    withSpark(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spark: value,
      }
    ),
    withSqlServer(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_server: value,
      }
    ),
    withTeradata(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        teradata: value,
      }
    ),
    withTwitter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        twitter: value,
      }
    ),
    withAmazonElasticsearchMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        amazon_elasticsearch+: converted,
      }
    ),
    withAthenaMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        athena+: converted,
      }
    ),
    withAuroraMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora+: converted,
      }
    ),
    withAuroraPostgresqlMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aurora_postgresql+: converted,
      }
    ),
    withAwsIotAnalyticsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        aws_iot_analytics+: converted,
      }
    ),
    withDatabricksMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        databricks+: converted,
      }
    ),
    withJiraMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        jira+: converted,
      }
    ),
    withMariaDbMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maria_db+: converted,
      }
    ),
    withMysqlMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        mysql+: converted,
      }
    ),
    withOracleMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oracle+: converted,
      }
    ),
    withPostgresqlMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        postgresql+: converted,
      }
    ),
    withPrestoMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        presto+: converted,
      }
    ),
    withRdsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rds+: converted,
      }
    ),
    withRedshiftMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        redshift+: converted,
      }
    ),
    withS3Mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3+: converted,
      }
    ),
    withServiceNowMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        service_now+: converted,
      }
    ),
    withSnowflakeMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        snowflake+: converted,
      }
    ),
    withSparkMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spark+: converted,
      }
    ),
    withSqlServerMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sql_server+: converted,
      }
    ),
    withTeradataMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        teradata+: converted,
      }
    ),
    withTwitterMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        twitter+: converted,
      }
    ),
  },
  permission:: {
    local block = self,
    new(actions, principal):: (
      {}
      + block.withActions(actions)
      + block.withPrincipal(principal)
    ),
    withActions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions: converted,
      }
    ),
    withActionsMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
      {
        actions+: converted,
      }
    ),
    withPrincipal(value):: (
      local converted = value;
      assert std.isString(converted) : '"principal" expected to be of type "string"';
      {
        principal: converted,
      }
    ),
  },
  ssl_properties:: {
    local block = self,
    new(disableSsl):: (
      {}
      + block.withDisableSsl(disableSsl)
    ),
    withDisableSsl(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_ssl" expected to be of type "bool"';
      {
        disable_ssl: converted,
      }
    ),
  },
  vpc_connection_properties:: {
    local block = self,
    new(vpcConnectionArn):: (
      {}
      + block.withVpcConnectionArn(vpcConnectionArn)
    ),
    withVpcConnectionArn(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_connection_arn" expected to be of type "string"';
      {
        vpc_connection_arn: converted,
      }
    ),
  },
  withCredentials(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials: value,
    }
  ),
  withParameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters: value,
    }
  ),
  withPermission(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permission: value,
    }
  ),
  withSslProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ssl_properties: value,
    }
  ),
  withVpcConnectionProperties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_connection_properties: value,
    }
  ),
  withCredentialsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credentials+: converted,
    }
  ),
  withParametersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameters+: converted,
    }
  ),
  withPermissionMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permission+: converted,
    }
  ),
  withSslPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ssl_properties+: converted,
    }
  ),
  withVpcConnectionPropertiesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_connection_properties+: converted,
    }
  ),
}
