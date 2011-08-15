name "base"
description "shared base role"
run_list("recipe[helpers]")
# Attributes applied if the node doesn't have it set already.
#default_attributes()
# Attributes applied no matter what the node has set already.
#override_attributes()