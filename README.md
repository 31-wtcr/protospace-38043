# README

# ER

## users_table

|column            |type  |options                  |
|------------------|------|-------------------------|
|email             |string|null: false, unique: true|
|encrypted_password|string|null: false              |
|name              |string|null: false              |
|profile           |string|null: false              |
|occupation        |text  |null: false              |
|position          |text  |null: false              |

### association

has_many :prototypes, dependent: :destroy
has_many :comments, dependent: :destroy

## prototypes_table

|column            |type      |options                           |
|------------------|----------|----------------------------------|
|title             |string    |null: false                       |
|catch_copy        |text      |null: false                       |
|concept           |text      |null: false                       |
|user              |references|null: false, foreign_key: true    |

### association

has_many :comments, dependent: :destroy
belongs_to :user

## comments_table

|column            |type      |options                           |
|------------------|----------|----------------------------------|
|content           |text      |null: false                       |
|prototype         |references|null: false, foreign_key: true    |
|user              |references|null: false, foreign_key: true    |

### association

belongs_to :user
belongs_to :prototype
