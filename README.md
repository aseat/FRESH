# README

# アプリケーション名	
Flesh

# アプリケーション概要	
若手技術者の育成に役立つサイト

# URL	
http://35.72.213.219/

ゲストログイン有

# 利用方法	

・試験方法
「試験方法」ボタンをクリック→詳細情報を観たいものをクリック→詳細画面に移る

・用語
「用語」ボタンをクリック→用語をクリック→用語の意味が表示される

・クイズ問題
「クイズ問題」ボタンをクリック→解いてみたい問題をクリック→問題に対し○か×で答える

・Q&A

質問する場合
「Q&A」ボタンをクリック→「新規投稿」ボタンを押す→タイトルと質問したい内容を記述し、「投稿する」ボタンをクリック

回答する場合
回答欄に回答を記述する→「答える」ボタンをクリック

目指した課題解決	
私自身がコンクリート研究開発を行ってきた経歴から教育サービスを充実させたら将来的に即戦力にもなり効率よく育成を行うことが出来るのではないかと考えました。
また、教育を通じてより興味を持ってもらえるように広告を取り入れました。コンクリート新聞では若手技術者が不足しているため、採用が困難であると行ったことが挙げられるからです。
建設業に関する正しい試験方法や知識、クイズ問題を通して知識をより定着させるものです。分からないことがあれば質問をすることができます。

# 洗い出した要件	

# 実装した機能についての説明
・試験方法
新規投稿

コメント

・用語
新規投稿

・Q&A
新規投稿

解答

・クイズ問題

問題作成

解答

# 実装予定の機能	
・いいね機能非同期通信
・フォロー機能
・DM機能

# データベース設計	
![Flesh DB設計](https://user-images.githubusercontent.com/73108756/111067353-37101c00-8507-11eb-8f4e-fb21d5cfd616.jpeg)

ローカルでの動作方法	
●バックエンド
・ruby 2.6.5
・Rails 6.1.0
・MySQL 5.6.50
●フロントエンド
・HTML / SCSS
・javascript
●開発環境
・VScode 
・Docker
・RuboCop
●CI/CD
・CircleCI
・Capistrano
●バージョン管理
・git、github
●インフラ
・AWS(S3)
・Nginx/Unicorn
・ECS
●テスト
・Rspec 