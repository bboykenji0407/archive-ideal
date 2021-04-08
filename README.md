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

# Reservationsテーブル

|  column    |  type  |    option   |
|------------|--------|-------------|
| user_id    | references | foreign key: true |
| day_time   | datetime   | null: false |
| remarks    | text       | null: false |
