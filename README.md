# メモ

## GITHUB_EVENT

GitHub Actions 実行時の情報が `${GITHUB_EVENT_PATH}` のファイルに格納されている.  
`cat ${GITHUB_EVENT_PATH} | jq` などとすれば取れる.

ex) [github_event.json](github_event.json)

## マージ済みのブランチを消したい

最初に試したのは https://github.com/jessfraz/branch-cleanup-action 

```workflow
workflow "New workflow" {
  resolves = ["jessfraz/branch-cleanup-action@master"]
  on = "pull_request"
}

action "jessfraz/branch-cleanup-action@master" {
  uses = "jessfraz/branch-cleanup-action@master"
  secrets = ["GITHUB_TOKEN"]
}
```

動作結果は -> #3

これでも良いのだけど、よりリッチな実装の https://github.com/SvanBoxel/delete-merged-branch も試してみた。

```workflow
workflow "New workflow" {
  on = "pull_request"
  resolves = ["SvanBoxel/delete-merged-branch"]
}

action "SvanBoxel/delete-merged-branch" {
  uses = "SvanBoxel/delete-merged-branch@v1.3.2"
  secrets = ["GITHUB_TOKEN"]
}
```

だが Action が InProgress のまま動く気配がない。


