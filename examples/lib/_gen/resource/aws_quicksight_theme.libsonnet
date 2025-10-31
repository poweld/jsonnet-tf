{
  local block = self,
  new(terraformName, baseThemeId, name, themeId):: (
    {
      jsonnetTfMetadata:: {
        terraform:: {
          name:: terraformName,
          object:: "aws_quicksight_theme",
          type:: "resource",
          attributes:: ["arn", "aws_account_id", "base_theme_id", "created_time", "id", "last_updated_time", "name", "region", "status", "tags", "tags_all", "theme_id", "version_description", "version_number"],
        },
      },
    }
    + block.withBaseThemeId(baseThemeId)
    + block.withName(name)
    + block.withThemeId(themeId)
  ),
  withAwsAccountId(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_account_id" expected to be of type "string"';
    {
      aws_account_id: converted,
    }
  ),
  withBaseThemeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"base_theme_id" expected to be of type "string"';
    {
      base_theme_id: converted,
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
  withThemeId(value):: (
    local converted = value;
    assert std.isString(converted) : '"theme_id" expected to be of type "string"';
    {
      theme_id: converted,
    }
  ),
  withVersionDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_description" expected to be of type "string"';
    {
      version_description: converted,
    }
  ),
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraform+:: {
        name:: value,
      },
    },
  },
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    data_color_palette:: {
      local block = self,
      new():: (
        {}
      ),
      withColors(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"colors" expected to be of type "list"';
        {
          colors: converted,
        }
      ),
      withColorsMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"colors" expected to be of type "list"';
        {
          colors+: converted,
        }
      ),
      withEmptyFillColor(value):: (
        local converted = value;
        assert std.isString(converted) : '"empty_fill_color" expected to be of type "string"';
        {
          empty_fill_color: converted,
        }
      ),
      withMinMaxGradient(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"min_max_gradient" expected to be of type "list"';
        {
          min_max_gradient: converted,
        }
      ),
      withMinMaxGradientMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"min_max_gradient" expected to be of type "list"';
        {
          min_max_gradient+: converted,
        }
      ),
    },
    sheet:: {
      local block = self,
      new():: (
        {}
      ),
      tile:: {
        local block = self,
        new():: (
          {}
        ),
        border:: {
          local block = self,
          new():: (
            {}
          ),
          withShow(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"show" expected to be of type "bool"';
            {
              show: converted,
            }
          ),
        },
        withBorder(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            border: value,
          }
        ),
        withBorderMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            border+: converted,
          }
        ),
      },
      tile_layout:: {
        local block = self,
        new():: (
          {}
        ),
        gutter:: {
          local block = self,
          new():: (
            {}
          ),
          withShow(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"show" expected to be of type "bool"';
            {
              show: converted,
            }
          ),
        },
        margin:: {
          local block = self,
          new():: (
            {}
          ),
          withShow(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"show" expected to be of type "bool"';
            {
              show: converted,
            }
          ),
        },
        withGutter(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            gutter: value,
          }
        ),
        withMargin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            margin: value,
          }
        ),
        withGutterMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            gutter+: converted,
          }
        ),
        withMarginMixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            margin+: converted,
          }
        ),
      },
      withTile(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile: value,
        }
      ),
      withTileLayout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile_layout: value,
        }
      ),
      withTileMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile+: converted,
        }
      ),
      withTileLayoutMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          tile_layout+: converted,
        }
      ),
    },
    typography:: {
      local block = self,
      new():: (
        {}
      ),
      font_families:: {
        local block = self,
        new():: (
          {}
        ),
        withFontFamily(value):: (
          local converted = value;
          assert std.isString(converted) : '"font_family" expected to be of type "string"';
          {
            font_family: converted,
          }
        ),
      },
      withFontFamilies(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          font_families: value,
        }
      ),
      withFontFamiliesMixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          font_families+: converted,
        }
      ),
    },
    ui_color_palette:: {
      local block = self,
      new():: (
        {}
      ),
      withAccent(value):: (
        local converted = value;
        assert std.isString(converted) : '"accent" expected to be of type "string"';
        {
          accent: converted,
        }
      ),
      withAccentForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"accent_foreground" expected to be of type "string"';
        {
          accent_foreground: converted,
        }
      ),
      withDanger(value):: (
        local converted = value;
        assert std.isString(converted) : '"danger" expected to be of type "string"';
        {
          danger: converted,
        }
      ),
      withDangerForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"danger_foreground" expected to be of type "string"';
        {
          danger_foreground: converted,
        }
      ),
      withDimension(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension" expected to be of type "string"';
        {
          dimension: converted,
        }
      ),
      withDimensionForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"dimension_foreground" expected to be of type "string"';
        {
          dimension_foreground: converted,
        }
      ),
      withMeasure(value):: (
        local converted = value;
        assert std.isString(converted) : '"measure" expected to be of type "string"';
        {
          measure: converted,
        }
      ),
      withMeasureForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"measure_foreground" expected to be of type "string"';
        {
          measure_foreground: converted,
        }
      ),
      withPrimaryBackground(value):: (
        local converted = value;
        assert std.isString(converted) : '"primary_background" expected to be of type "string"';
        {
          primary_background: converted,
        }
      ),
      withPrimaryForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"primary_foreground" expected to be of type "string"';
        {
          primary_foreground: converted,
        }
      ),
      withSecondaryBackground(value):: (
        local converted = value;
        assert std.isString(converted) : '"secondary_background" expected to be of type "string"';
        {
          secondary_background: converted,
        }
      ),
      withSecondaryForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"secondary_foreground" expected to be of type "string"';
        {
          secondary_foreground: converted,
        }
      ),
      withSuccess(value):: (
        local converted = value;
        assert std.isString(converted) : '"success" expected to be of type "string"';
        {
          success: converted,
        }
      ),
      withSuccessForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"success_foreground" expected to be of type "string"';
        {
          success_foreground: converted,
        }
      ),
      withWarning(value):: (
        local converted = value;
        assert std.isString(converted) : '"warning" expected to be of type "string"';
        {
          warning: converted,
        }
      ),
      withWarningForeground(value):: (
        local converted = value;
        assert std.isString(converted) : '"warning_foreground" expected to be of type "string"';
        {
          warning_foreground: converted,
        }
      ),
    },
    withDataColorPalette(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_color_palette: value,
      }
    ),
    withSheet(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sheet: value,
      }
    ),
    withTypography(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        typography: value,
      }
    ),
    withUiColorPalette(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ui_color_palette: value,
      }
    ),
    withDataColorPaletteMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_color_palette+: converted,
      }
    ),
    withSheetMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sheet+: converted,
      }
    ),
    withTypographyMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        typography+: converted,
      }
    ),
    withUiColorPaletteMixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ui_color_palette+: converted,
      }
    ),
  },
  permissions:: {
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    withCreate(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    withDelete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    withUpdate(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  withConfiguration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  withPermissions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions: value,
    }
  ),
  withTimeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  withConfigurationMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
  withPermissionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permissions+: converted,
    }
  ),
}
