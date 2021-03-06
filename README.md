[![Push Event Status](https://github.com/yasuhiroki/enjoy-github-actions/workflows/push%20event/badge.svg)](https://github.com/yasuhiroki/enjoy-github-actions/actions)


# メモ

## 公式 Actions

https://github.com/actions

## 世の中の GitHub Actions の YAML を検索する

https://github.com/search?q=path%3A.github%2Fworkflows&type=Code

## ::add-path:: コマンド

※ 非推奨のコマンド
https://github.blog/changelog/2020-10-01-github-actions-deprecating-set-env-and-add-path-commands/

コマンドが反映されるのは以降のステップ.  
また PATH の先頭に追加される.

[同じrun内では反映されていない](https://github.com/yasuhiroki/enjoy-github-actions/commit/90e86550ce93058731e029b1a4e8bf5c374bbc19/checks?check_suite_id=253494226)  
[別のstepには反映されている](https://github.com/yasuhiroki/enjoy-github-actions/commit/ad23f90f2d4969e7e72ae14ab1869d35ccf8e8e0/checks?check_suite_id=253504963)

## ::debug:: コマンド

[Secrets](https://github.com/yasuhiroki/enjoy-github-actions/settings/secrets) で `ACTIONS_STEP_DEBUG` を true にすると↓のようなデバッグログが出力される.

![image](https://user-images.githubusercontent.com/3108110/66326748-817d8880-e964-11e9-8ff2-1243f7a178ca.png)

`::debug::` コマンドはこのログに追記するためのコマンド.  
`env` に `ACTIONS_STEP_DEBUG: true` と書いても意味がないことに注意.

## GitHub pages

Public Repository では GitHub Actions の `GITHUB_TOKEN` によって GitHub pages を更新することはできない.

> https://twitter.com/piris314/status/1193758293149155328
