{
  isJsonnetTf(obj):: std.objectHasAll(o=obj, f="jsonnetTfMetadata"),
  local sum(a, b) = a + b,

  // Convert the tree into valid Terraform JSON format
  toTerraform(root):: (
    if std.isObject(root) then (
      if $.isJsonnetTf(root) then (
        local meta = root.jsonnetTfMetadata.terraform;

        {
          [meta.type]+: (
            if meta.type == "provider" then {
              [meta.name]: root,
            } else {
              [meta.object]+: {
                [meta.name]: root,
              },
            }
          ),
        }
      ) else (
        // !isJsonnetTf
        local values = std.objectValues(o=root);
        local terraformed = std.map(func=$.toTerraform, arr=values);
        std.foldl(func=sum, arr=terraformed, init={})
      )
    ) else if std.isArray(root) then (
      local terraformed = std.map(func=$.toTerraform, arr=root);
      std.foldl(func=sum, arr=terraformed, init={})
    ) else {}
  ),

  outputReference(obj, attribute):: (
    local meta = obj.jsonnetTfMetadata.terraform;
    "${%(prefix)s%(terraformObject)s.%(terraformName)s.%(attribute)s}" % {
      prefix: if meta.type == "data" then "data." else "",
      terraformObject: meta.object,
      terraformName: meta.name,
      attribute: attribute,
    }
  ),
}
