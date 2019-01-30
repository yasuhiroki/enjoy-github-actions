workflow "New workflow" {
  on = "push"
  resolves = ["jessfraz/branch-cleanup-action@master"]
}

action "jessfraz/branch-cleanup-action@master" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
}
