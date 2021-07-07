# README

# アプリケーション名	
Flesh

# アプリケーション概要	
建設業における若手技術者の育成に役立つサイト
分からないことを解決するアプリ


# URL	
https://t.co/UM4lMdtuLo

・ゲストログイン有

# 利用方法	

・試験方法
「試験方法」ボタンをクリック→詳細情報を観たいものをクリック→詳細画面に移る 
<img width="457" alt="Fresh1" src="https://user-images.githubusercontent.com/73108756/114030206-40499a00-98b5-11eb-92e6-f55ede18c1e2.png">
・用語
「用語」ボタンをクリック→用語をクリック→用語の意味が表示される
![Fresh2](https://user-images.githubusercontent.com/73108756/114030228-4475b780-98b5-11eb-8cd6-68b5d92def56.jpeg)
・クイズ問題
「クイズ問題」ボタンをクリック→解いてみたい問題をクリック→問題に対し○か×で答える
![Fresh3](https://user-images.githubusercontent.com/73108756/114030224-43dd2100-98b5-11eb-95c8-8b3733ea7c10.jpeg)
・Q&A
![Fresh4](https://user-images.githubusercontent.com/73108756/114030221-43dd2100-98b5-11eb-99c9-818ebc36c6c5.jpeg)

質問する場合
「Q&A」ボタンをクリック→「新規投稿」ボタンを押す→タイトルと質問したい内容を記述し、「投稿する」ボタンをクリック

回答する場合
回答欄に回答を記述する→「答える」ボタンをクリック

目指した課題解決	
私自身がコンクリート研究開発を行ってきた経歴から教育サービスを充実させたら将来的に即戦力にもなり効率よく育成を行うことが出来るのではないかと考えました。
また、教育を通じてより興味を持ってもらえるように広告を取り入れました。コンクリート新聞では若手技術者が不足しているため、採用が困難であると行ったことが挙げられるからです。
建設業に関する正しい試験方法や知識、クイズ問題を通して知識をより定着させるものです。分からないことがあれば質問をすることができます。

# 要件定義	
https://docs.google.com/spreadsheets/d/1zEGvkH6OybgdI6KMnyoORC-uLSAozPh8dewh0peBBr0/edit?usp=sharing

# 実装した機能についての説明
・試験方法
試験名と、説明文、画像(任意)、動画(任意)を投稿することができ、投稿に対するコメントを行うことができます

・用語
用語の意味を投稿することができます

・Q&A
質問することができ、回答することができます

・クイズ問題
問題作成や○×形式で問題を解くことができます

# 実装予定の機能	
・いいね機能非同期通信
・フォロー機能
・DM機能

# データベース設計	
![Flesh DB設計](https://user-images.githubusercontent.com/73108756/111067353-37101c00-8507-11eb-8f4e-fb21d5cfd616.jpeg)

# ローカルでの動作方法	
●バックエンド
・ruby 2.6.5
・Rails 6.1.3.1
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
