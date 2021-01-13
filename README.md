# Cocktail Hub

![cocktail-hub](https://user-images.githubusercontent.com/53992902/103436803-f7a19580-4c62-11eb-89ac-6a83240794d1.png)

# 概要

誰かの投稿を見て今日の飲み物を決めてみたり、 \
沢山の人に自分のオリジナルのカクテルをシェアできるアプリです。

開発環境にDockerを使用、インフラにAWSの各種サービスを活用し、CircleCIを使用してCI/CDパイプラインを構築しています。

# 製作背景

お酒が好きなので自分の好きなお酒を共有できたり、\
今日は何を飲もうかな？という時に参考になるアプリを作ってみようと考え、就職活動の為のポートフォリオアプリとして製作致しました。

# URL

https://www.cocktail-hub.site/

- 非ログイン状態でも投稿の閲覧が可能です、ログインすると新規投稿や投稿へのいいねやコメントなどが可能になります。
- ログイン画面の「ゲストユーザーでログインする」ボタンから簡単にゲストログインできます、本アプリをチェックする際にご利用ください。
- メールアドレス(admin@example.com)、パスワード(00000000)で管理ユーザーとしてログインできます。
- 管理ユーザーは、他のユーザーやその投稿、コメントなど全てを削除できる権限を持ちます。

# 機能一覧

- 投稿機能
  - 新規投稿、投稿詳細表示、投稿編集、投稿削除

- ユーザー機能
  - deviseを使用
  - ユーザー新規登録、ユーザー詳細表示、ユーザー編集、ユーザー削除
  - ログイン、ログアウト
  - ゲストログイン

- いいね機能
  - 投稿にいいね
  - いいね切り替えボタンにAjaxを使用

- フォロー機能
  - ユーザーのフォロー
  - フォロー一覧表示
  - フォロワー一覧表示
  - 一覧の表示とフォロー切り替えボタンにAjaxを使用

- コメント機能
  - 投稿へのコメント投稿、コメント削除

- 投稿検索機能
  - 投稿一覧ページでリアルタイム検索

- 画像アップロード機能
  - 投稿とユーザーの画像をアップロード
  - Active StorageとAWS S3を使用

- ページネーション機能
  - Rails部分にはkaminariを使用
  - 投稿一覧ページ、投稿のコメント、ユーザーのフォローとフォロワーページで実装

- トップへ戻るボタン機能

- いいねランキング機能

- ランダム遷移機能(特定のページからランダムに選ばれた投稿の詳細ページに移動する)

- 一部Vueを使用したフロントエンドの実装
  - ヘッダー、ドロワーメニュー、ダイアログ、フッター、投稿一覧ページにて実装

# 使用技術一覧

## バックエンド

- Ruby ( 2.7.1 )
- Ruby on Rails ( 6.0.3.3 )

## フロントエンド

- slim
- SASS
- Bootstrap ( 4.5.0 )
- jQuery ( 3.5.1 )
- Vue.js ( 2.6.11 )
- Vuetify ( 2.2.30 )

## DB

- MySQL ( 8.0.19 )

## テスト・静的解析

- RSpec ( 4.0.0.beta2 )
- Rubocop

## インフラ

- Docker / docker-compose
- AWS
  - VPC, EC2, RDS, ELB, ACM, S3, Route53
- Nginx (WEBサーバ)
- CircleCI (CI/CDパイプライン)

# インフラ構成図

![インフラ構成図](https://user-images.githubusercontent.com/53992902/103436635-320a3300-4c61-11eb-8091-0a6b4fcf3201.png)

# 工夫した点

## 一部ページへのVueの導入

![工夫点1](https://user-images.githubusercontent.com/53992902/103436070-1dc33780-4c5b-11eb-8f85-78fdf4f8fc7c.png)

フロントエンドでVue.jsを使用してみたいと思いアプリの一部をVueを使用して実装しています。 \
Railsのみでの実装よりアプリ全体のユーザビリティや見た目が向上しています。

RailsとVueを組み合わせることで複雑になり、少し難易度が上がりました。 \
その中で沢山の情報を調べ学習したことでより自身の成長に繋がったと感じており、 \
特にJavaScriptを使用する部分の実装方法やどのように動作しているのかなど大変勉強になりました。

## CircleCIを使ったCI/CDパイプラインの実装

![工夫点2](https://user-images.githubusercontent.com/53992902/103436079-3e8b8d00-4c5b-11eb-9393-bfd2eab3d54d.png)

自動ビルド、テスト、デプロイができるように \
CircleCIを使用してCI/CDパイプラインの構築を行っています。

実装に伴いAWSなどインフラ関連について、 \
より一層深く学習、経験を得る事ができました。

## ダイアログでの機能実装

![工夫点3](https://user-images.githubusercontent.com/53992902/103436085-4d723f80-4c5b-11eb-835f-95b05d08b4cd.png)

いいねランキング機能やランダム遷移機能など \
投稿一覧ページにダイアログとして表示することで \
スムーズな利用が可能となり、ユーザビリティの向上になると感じ実装しました。

# 最後に

はじめて本格的にアプリ開発を行ったのですが \
本を読んだり学習アプリで学ぶよりも、 \
さらに能動的に学習する事ができ、大きな学びがありました。 \
難しい部分も多々ありましたがそれを乗り越える度に成長できたと感じています。

このアプリにはまだまだ改良点が沢山あると感じていて \
今後試行錯誤しつつ改良を重ねてより良いものを作り、その過程でさらに自身の成長に繋げていきます。

この度はお忙しい中ご覧いただき、誠にありがとうございました。