workflow "New workflow" {
  on = "push"
  resolves = ["docker://jessfraz/branch-cleanup-action"]
}

action "docker://jessfraz/branch-cleanup-action" {
  uses = "docker://jessfraz/branch-cleanup-action"
  secrets = ["GITHUB_TOKEN"]
}
