# Extract envs function
extract_envs() {
  yq e '.spec.containers[0].env[] | select(.value != null) | .name + ": \"" + .value + "\""' | wl-copy
}
