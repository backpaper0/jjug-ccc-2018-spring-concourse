# demo

定義ファイルの説明

|ファイル名|概要|
|---|---|
|`task0.yml`|登壇前の動作確認用⛄️|
|`task1.yml`|`echo`するだけ|
|`task2.yml`|リソースを`cat`する|
|`pipeline1.yml`|ジョブのみ|
|`pipeline2.yml`|リソースとジョブ|
|`pipeline3.yml`|複数のリソースと複数のジョブ|
|`pipeline4.yml`|Javaアプリケーションのビルド|

`fly`コマンド

```sh
# ログイン
fly -t ccc login -c http://localhost:8080
# one-off build
fly -t ccc e -c task1.yml
# one-off build with resource
fly -t ccc e -c task2.yml
# リソースを指定しつつone-off build
fly -t ccc e -c task2.yml -i pipeline=foobar
# パイプライン登録
fly -t ccc sp -p echo1 -c pipeline1.yml
# パイプラインunpause
fly -t ccc up -p echo1
# ジョブ実行
fly -t ccc tj -j echo1/hello
```

