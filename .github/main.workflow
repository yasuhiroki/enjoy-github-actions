workflow "New workflow" {
  on = "pull_request"
  resolves = ["SvanBoxel/delete-merged-branch"]
}

action "SvanBoxel/delete-merged-branch" {
  uses = "SvanBoxel/delete-merged-branch@v1.3.2"
}
