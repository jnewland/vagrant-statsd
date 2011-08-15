name "lucid64"
description "lucid64 base box"
run_list(
  "role[base]"
)
# Attributes applied if the node doesn't have it set already.
#default_attributes()
# Attributes applied no matter what the node has set already.
#override_attributes()