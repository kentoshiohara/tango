# テーブル設計

## users テーブル

| Column                | Type   | Options                  |
| --------------------- | ------ | ------------------------ |
| name                  | string | null: false              |
| email                 | string | null: false, unique: true|
| encrypted_password    | string | null: false              |

### Association

- has_many :categories

## categories テーブル

| Column                | Type       | Options              |
| --------------------- | ---------- | -------------------- |
| name                  | string     | null: false          |
| user                  | references | foreign_key: true    |

### Association

- has_many :vocabularies
- belongs_to :user


## vocabularies テーブル

| Column                | Type       | Options              |
| --------------------- | ---------- | -------------------- |
| name                  | string     | null: false          |
| meaning               | string     | null: false          |
| category              | references | foreign_key: true    |

### Association

- belongs_to :category

