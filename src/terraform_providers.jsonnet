// terraform providers TLA function
function(provider, provider_source, provider_version, terraform_version) (
  assert std.isString(provider) : "'provider' expected to be of type 'string'";
  assert std.isString(provider_source) : "'provider_source' expected to be of type 'string'";
  assert std.isString(provider_version) : "'provider_version' expected to be of type 'string'";
  assert std.isString(terraform_version) : "'terraform_version' expected to be of type 'string'";
  {
    terraform: {
      required_providers: {
        [provider]: {
          source: provider_source,
          version: provider_version,
        },
      },

      required_version: terraform_version,
    }
  }
)
