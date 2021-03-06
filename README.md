# rails-dev-exam-a

このリポジトリは、mofmof.inc Rails技術試験で使用するリポジトリです。

## 概要

テーマに基づいて Ruby on Rails を用いたアプリケーションを作成します。

### テーマ

飲み会の幹事及びメンバーの管理を行うアプリケーションです。
飲み会グループ毎にメンバーを登録し、幹事を割り当てることができます。

### 仕様

- 認証機能は不要
- グループ・メンバーのCRUD
- グループにメンバーを所属させることができる
- メンバーは複数のグループに所属させることができる
- メンバーはグループから脱退できる
- 幹事は1グループにつき一人まで設定できる
- 幹事の設定は自動設定ボタンで行い、対象はランダムに選択される
- 自動設定の際に現在の幹事は幹事ではなくなり、2回連続で幹事にはならない
- デザインは不要（scaffoldで生成されたレベルのレイアウトで可）
- テストコードの実装は不要

メンバー及びグループは scaffold で作成済みです。

## 開発環境

### 言語・ミドルウェアなど

- Ruby 3.0.0
- Ruby on Rails 6.1.3
- Sqlite

### 納品の方法

新しいブランチを作り、その上で作業を行い、pull requestを出してください。

## 条件

- 仕様に関する質疑は着手前・後一度だけ応対可能です。必要な事項はまとめてご質問ください。
- インターネット検索を用いて必要な情報を収集することは可能としますが、他人との協力・情報交換は禁止とします。

## 期限

テスト開始から1週間

## 評価ポリシー

- 少なくて読みやすいことが良いコードだと考えています。出来るだけシンプルに書けるように工夫してください。
- チーム開発を前提としているので、チーム開発における一般的なルール・マナーを守るように注意してください。

## 画面サンプル

グループ一覧

<img width="500" alt="スクリーンショット 2020-02-03 11 16 52" src="https://user-images.githubusercontent.com/37338201/73620879-2be98c00-4677-11ea-8df6-1f66790fdfc0.png">


メンバー一覧

<img width="500" alt="スクリーンショット 2020-02-03 11 17 12" src="https://user-images.githubusercontent.com/37338201/73620884-2ee47c80-4677-11ea-95be-50eea00b47d5.png">


グループメンバー管理

<img width="500" alt="スクリーンショット スクリーンショット 2020-08-12 17 57 27" src="https://user-images.githubusercontent.com/1617885/89998193-2cb74680-dcc8-11ea-876f-2455372e78ee.png">
