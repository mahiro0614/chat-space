# README

# chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :users_groups
- has_many :messages

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|text|null: false|
### Association
- has_many :messages
- has_many :users_groups

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text|null: false|
|users_id|integer|null: false, foreign_key: true|
|groups_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|users_id|integer|null: false, foreign_key: true|
|groups_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

