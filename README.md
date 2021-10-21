# README

##アプリケーション名

        三行レシピ
        


# アプリケーション概要 
難しい工程はいらず、すぐに実践しやすいレシピ。
レシピの内容は３行で完結にすることで、やる気が出ないときでも頑張れる気持ちになれる
アプリケーションです。

# 制作背景
病院食の献立作成時に、何か新しいメニューを取り入れたいと思い
ふと、書店で「三行レシピ」という料理の本を見かけました。
三行でわかりやすく調理工程がまとまっており、とてもわかりやすかったので購入しました。
本の内容以外にも、ユーザー同士が3行で作れるものをたくさん共有してみるのも面白いと考え
制作してみました。


#  URL 	
https://cookreshipi.herokuapp.com/


# テスト用アカウント	
メールアドレス： test@test
パスワード    :testtest

# 機能一覧
ユーザー登録機能、ログイン機能
画像アップロード機能



# 利用方法	
ログインしたユーザーのみ、コメントとレシピ投稿をすることができます。
 ユーザー登録を行わなくても、レシピを閲覧することができます。
ユーザーページで自分が投稿した内容を確認することができます。
 ![dish_index](https://user-images.githubusercontent.com/88422268/138323704-082d8e3f-d875-4f7a-aebf-7385ce0f9ed8.jpg)
<img width="692" alt="dish_new" src="https://user-images.githubusercontent.com/88422268/138323725-52c83149-9328-4c16-9433-409f241b5f2b.png">



# 実装予定の機能

コメント機能      投稿したレシピに感想や、質問を記入し、ユーザー同士でコミュニケーションができるようにする
いいね機能       レシピに対する、いいね機能を搭載することでどのくらい人気のあるレシピなのかを確認することができる。
検索機能         材料や食品名で検索することができるようになる。
ハッシュタグ検索  レシピ登録時に、ハッシュタグをつけることで、安易に検索をかけれるようになる
静的ページ作成    サイトの使用方法を記載。

# 開発環境
Ruby on rails  6.0
MySQL

# データベース設計

## users テーブル
|Column             |Type     | Options   |
|-------------------|---------|-----------|
|email              |string   |null:false |
|encrypted_password |string   |null:false |
|nickname           |string   |null:false |
|profile            |text     |null:false |

Association
.dish
.comment

## dish テーブル
|column   |Type       |Options    |
|---------|-----------|-----------|
|title    |text       |null:false |
|category |text       |null:false |
|material |text       |null:false |
|one      |text       |null:false |
|two      |text       |null:false |
|three    |text       |null:false |
|user     |references |null:false |

Association
.users
.comment

## commentテーブル
|column   |Type       |Optiond    |
|---------|-----------|-----------|
|content  |text       |null:false |
|dish     |references |null:false |
|user     |references |null:false |

