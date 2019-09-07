workflow "New workflow" {
  resolves = [
    "jessfraz/branch-cleanup-action@master",
    "yasuhiroki/github-actions-helloworld",
    "yasuhiroki/github-actions-guard-autosquash-commit",
  ]
  on = "pull_request"
}

action "jessfraz/branch-cleanup-action@master" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    NO_BRANCH_DELETED_EXIT_CODE = "0"
  }
}

action "yasuhiroki/github-actions-helloworld" {
  uses = "yasuhiroki/github-actions-helloworld@master"
}

action "yasuhiroki/github-actions-guard-autosquash-commit" {
  uses = "yasuhiroki/github-actions-guard-autosquash-commit@master"
}
