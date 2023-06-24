# README


## users テーブル

|          Column        |    Type   |            Options             |
| ------------------     | --------- | ------------------------------ |
| nickname               | string    | null: false                    |
| email                  | string    | null: false,  unique: true     |
| encrypted_password     | string    | null: false                    |


### Association
has_many :recipes
has_many :comments
has_one  :favorites





## recipes テーブル

|          Column        |    Type    |            Options               |
| ---------------------  | ---------- | ------------------------------   |
| title                  | string     | null: false                      |
| photo_cooking          | string     | null: false                      |
| allergy_id             | string     | null: false                      |
| cooking_time           | integer    | null: false                      |
| ingredients            | string     | null: false                      |
| procedure              | string     | null: false                      |
| shelf_life             | string     | null: false                      |
| freezable_id           | integer    | null: false                      |
| word                   | text       | null: false                      |
| user                   | references | null: false,  foreign_key: true  |


### Association
belongs_to :user
has_many   :comments
has_many   :favorites






##  comments テーブル

|          Column         |    Type    |            Options               |
| ---------------------   | ---------  | ------------------------------   |
| content                 | string     | null: false                      |
| user                    | references | null: false,  foreign_key: true  |
| recipe                  | references | null: false,  foreign_key: true  |


### Association
belongs_to :user
belongs_to :recipe





## favorites テーブル

|       Column        |     Type      |              Options               |
| ------------------  | ------------- | ---------------------------------- |
| user                | references    | null: false,  foreign_key: true    |
| recipe              | references    | null: false,  foreign_key: true    |



### Association
has_one    :user
belongs_to :recipe