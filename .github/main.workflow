workflow "New workflow" {
  on = "pull_request"
  resolves = ["jessfraz/branch-cleanup-action"]
}

action "jessfraz/branch-cleanup-action" {
  uses = "jessfraz/branch-cleanup-action@4c8b444e9293a9f888bcdd86366d7dba7fdce3c3"
  secrets = ["GITHUB_TOKEN"]
}
