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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|

### Association
- has_many :lists, dependent: :destroy

## listsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|title|string|null: false|

### Association
- has_many :cards, dependent: :destroy
- belongs_to :user

## cardsテーブル

|Column|Type|Options|
|------|----|-------|
|list_id|references|null: false, foreign_key: true|
|title|string|null: false, limit: 255|
|memo|text|null: false, limit: 1000|

### Association
- belongs_to :list