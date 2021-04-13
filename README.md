# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Usersテーブル

|  column    |  type  |    option   |
|------------|--------|-------------|
| name       | string     | null: false |
| email      | string     | unique: true, null: false |
| tell_num  | string     | null: false |
| age        | integer    | null: false |

# Eventsテーブル

|  column    |  type  |    option   |
|------------|--------|-------------|
| user_id    | references | foreign key: true |
| day_time   | datetime   | null: false |
| remarks    | text       | null: false |

# アプリケーション名	archive-ideal
# アプリケーション概要  自宅ネイルサロン　予約機能付きアプリケーション

# URL	https://archive-ideal.herokuapp.com/
# テスト用アカウント メールアドレス:　kkk@kkk  パスワード: hpBvxmuk6acpEM8 ,Basic認証 ID: archive-ideal Pass:931206

# 利用方法  予約の際、ユーザー新規登録が必須となります。登録後、予約ページへアクセスが可能となり、予約ができます。可能な範囲での予約時間の指定、ご希望デザインの指定が可能です。
# 目指した課題解決  単価を気にしないでネイルサロンに通いたい。簡単に予約できる。リピートしやすいサロンを見つけたい。自宅付近で短時間でネイルをおしゃれにしたい。
# 洗い出した要件	https://docs.google.com/spreadsheets/d/1bbDpum6po4IB2c_XrbbiYZkxYu_UdpB2W54ckezlkbs/edit#gid=282075926
# 実装した機能についての画像やGIFおよびその説明	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記述。画像はGyazoで、GIFはGyazoGIFで撮影すること。
# 実装予定の機能  現状1分単位での予約ができてしまうため、00分、または30分のみ選択できる状態にする必要あり。新規予約が会った際、管理者に連絡が入るように設定が必要。予約1日前から削除不可にする必要あり。
# データベース設計	ER図gyazo:https://i.gyazo.com/84ed64a907612cfd41c7c0538c924910.png
ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。

# 新規ユーザー登録
[![Image from Gyazo](https://i.gyazo.com/009812a46880ba5463715ff063b2450a.gif)](https://gyazo.com/009812a46880ba5463715ff063b2450a)
# 登録後ログインページからトップページへ
[![Image from Gyazo](https://i.gyazo.com/ec4b656afbda557aa266d772b6c7f95d.gif)](https://gyazo.com/ec4b656afbda557aa266d772b6c7f95d)
# トップページからカレンダーページへ
[![Image from Gyazo](https://i.gyazo.com/30eb53f1616224309f0e7de211c7cf61.gif)](https://gyazo.com/30eb53f1616224309f0e7de211c7cf61)
# カレンダーページの"予約はこちらへ"から予約フォームへ
[![Image from Gyazo](https://i.gyazo.com/959351b607810df54910bce1f1184bb0.gif)](https://gyazo.com/959351b607810df54910bce1f1184bb0)
# 予約フォームに必要事項を入力後"予約する"をクリックで予約完了、トップページに遷移します。
[![Image from Gyazo](https://i.gyazo.com/11dd08d0f374f566254a70cb16a03b63.gif)](https://gyazo.com/11dd08d0f374f566254a70cb16a03b63)
# 予約の詳細はカレンダーの本人の名前から確認できます
[![Image from Gyazo](https://i.gyazo.com/0493257044d2fcc8da615a791d077423.gif)](https://gyazo.com/0493257044d2fcc8da615a791d077423)
# 詳細画面から、予約内容の変更が可能です
[![Image from Gyazo](https://i.gyazo.com/9d3c97756124788ffb921d1c7ce08090.gif)](https://gyazo.com/9d3c97756124788ffb921d1c7ce08090)
# 予約削除も可能です
[![Image from Gyazo](https://i.gyazo.com/2eab5244542f25fec4b2a5c5f7693f94.gif)](https://gyazo.com/2eab5244542f25fec4b2a5c5f7693f94)
# 他のユーザーの予約に関しては閲覧、予約変更、削除できません
[![Image from Gyazo](https://i.gyazo.com/12c54c1a7868fdeca4256f3577bf48d2.gif)](https://gyazo.com/12c54c1a7868fdeca4256f3577bf48d2)