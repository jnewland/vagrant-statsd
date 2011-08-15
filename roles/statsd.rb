name "statsd"
description "statsd"
run_list(
  "recipe[statsd::log_chef_runs]",
  "role[lucid64]",
  "recipe[graphite]",
  "recipe[node]",
  "recipe[statsd]"
)
# Attributes applied if the node doesn't have it set already.
#default_attributes()
# Attributes applied no matter what the node has set already.
#override_attributes()