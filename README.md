## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|
|tel_confirmation|string|null: false|
|first_name|string|null: false|
|last_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|zip|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building|string||
|phone_number|string||
|card_number|string|null: false|
|expiration_month|string|null: false|
|expiration_year|string|null: false|
|security_code|string|null: false|
|profile|string||
|birthday|date|null: false|
|provider|string||
|uid|string||

### Association
- has_many :products
- has_many :likes
- has_many :purchases
- belongs_to :image

## productsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|references|foreign_key: true|
|description|string|null: false|
|category_large_id|references|foreign_key: true|
|category_middle_id|references|foreign_key: true|
|category_small_id|string|references|foreign_key: true|
|brand_id|references|foreign_key: true|
|size|string|null: false|
|status|string|null: false|
|shipping_charges_burden|string|null: false|
|dispatch_area|string|null: false|
|shipping_method|string|null: false|
|number_of_the_days_to_ship|string|null: false|
|price|integer|null: false|
|body|string|null: false|
|condition|string|null: false|

### Association
- has_many :images
- has_many :likes
- belongs_to :user
- belongs_to :brand
- belongs_to :purchase
- belongs_to :category_large
- belongs_to :category_middle
- belongs_to :category_small

## category_largeテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :category_large_middles
- belongs_to :product

## category_middleテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :category_large_middles
- has_many :category_middle_smalls
- belongs_to :product

## category_smallテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :category_middle_smalls
- belongs_to :product

## category_large_middleテーブル

|Column|Type|Options|
|------|----|-------|
|category_large_id|references|foreign_key: true|
|category_middle_id|references|foreign_key: true|

### Association
- belongs_to :category_large
- belongs_to :category_middle

## category_middle_smallテーブル

|Column|Type|Options|
|------|----|-------|
|category_middle_id|references|foreign_key: true|
|category_small_id|references|foreign_key: true|

### Association
- belongs_to :category_middle
- belongs_to :category_small

## brandテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :product

## item_imageテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product

## likeテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|product_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product

## feedbackテーブル

|Column|Type|Options|
|------|----|-------|
|purchase_id|references|foreign_key: true|
|lank|string|null: false|

### Association
- belongs_to :purchase

## purchaseテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|product_id|references|foreign_key: true|
|price_pay|integer|null: false|
|shipping_address|string|null: false|
|payment_method|string|null: false|

### Association
- belongs_to :user
- belongs_to :product
- belongs_to :feedback

