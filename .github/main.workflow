workflow "New workflow" {
  resolves = [
    "jessfraz/branch-cleanup-action@master",
    "yasuhiroki/github-actions-helloworld",
  ]
  on = "pull_request"
}

action "jessfraz/branch-cleanup-action@master" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
}

action "yasuhiroki/github-actions-helloworld" {
  uses = "yasuhiroki/github-actions-helloworld@master"
}
