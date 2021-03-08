# README

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------  |
| user_name          | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

## tweetテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | -----------------------------  |
| title              | string     | null: false                    |
| text               | text       | null: false                    |
| place              | string     | null: false                    |
| user               | references | null: false, foreign_key: true |

## tagテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | -----------------------------  |
| name               | string     | null: false                    |

## tag_tweet_relationsテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | -----------------------------  |
| tweet_id           | references | null: false, foreign_key: true |
| tag_id             | references | null: false, foreign_key: true |
