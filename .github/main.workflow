workflow "New workflow" {
  resolves = ["jessfraz/branch-cleanup-action@master"]
  on = "pull_request"
}

action "jessfraz/branch-cleanup-action@master" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
}
