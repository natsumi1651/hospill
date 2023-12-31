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

# テーブル設計

## usersテーブル
| Column              | Type           | Options                          |
| ------------------- | -------------- | -------------------------------- |
| nickname            | string         | null: false                      |
| email               | string         | null: false, unique: true        |
| encrypted_password  | string         | null: false                      |
| sir_name            | string         | null: false                      |
| first_name          | string         | null: false                      |
| phone_number        | string         | null: false                      |
| address             | text           | null: false                      |

### Association
- has_many :requests

## requestsテーブル
| Column              | Type            | Options                          |
| ------------------- | --------------- | -------------------------------- |
| title               | string          | null: false                      |
| date                | string          | null: false                      |
| description         | text            | null: false                      |
| category_id         | integer         | null: false                      |
| expected_length     | string          | null: false                      |
| expected_place      | text            | null: false                      |
| user_id             | references      | null: false, foreign_key: true   |

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
| Column              | Type            | Options                          |
| ------------------- | --------------- | -------------------------------- |
| text                | text            | null: false                      |
| request_id          | text            | null: false, foreign_key: true   |
- belongs_to :request