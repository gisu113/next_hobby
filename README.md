# アプリケーション名
NEXT HOBBY
# アプリケーション概要
新しく趣味を始めたい人が趣味を探すことができる。
# URL
https://next-hobby.onrender.com/
# テスト用アカウント
・メールアドレス test@test.com
・testtest1
# 利用方法
## 趣味投稿
1.トップページからユーザー新規登録を行う
2.趣味登録ボタンから、趣味の詳細（内容、所要時間、予算、参加人数）を入力し、投稿する。
## いいねを押す
1.趣味一覧ページからハートマークをクリックする。
# アプリケーションを作成した背景
新しく趣味を始めようとする際に悩むことがあったので、新しく趣味を始める人たちの参考になるようなアプリがあれば便利なのではないかと思い作成した。
# 洗い出した要件
https://docs.google.com/spreadsheets/d/1f9N8ibuBhudx1-jGxyR5mqa3ufK4jRKrhjMHtcyXzsY/edit#gid=0
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/b62428743ff597adac078234fdfb4148.png)](https://gyazo.com/b62428743ff597adac078234fdfb4148)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/6aaffc5482c84ca9208552f66bec8341.png)](https://gyazo.com/6aaffc5482c84ca9208552f66bec8341)
# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テスト
・テキストエディタ
・タスク管理
# ローカルでの動作方法
% git clone https://github.com/gisu113/next_hobby
% cd next hobby
% bundle install
% yarn install
# 工夫したポイント
いいね機能の追加といいねの数に応じてランキングを表示させるようにしたこと