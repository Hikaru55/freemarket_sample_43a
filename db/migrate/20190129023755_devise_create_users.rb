# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :nickname,         null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :tel_confirmation,  null: false, default: ""
      t.string :first_name,         null: false, default: ""
      t.string :last_name,          null: false, default: ""
      t.string :first_name_kana,    null: false, default: ""
      t.string :last_name_kana,     null: false, default: ""
      t.string :zip,                null: false, default: ""
      t.integer :prefecture,         null: false, default: "0"
      t.string :city,               null: false, default: ""
      t.string :block,              null: false, default: ""
      t.string :building,           default: ""
      t.string :phone_number,               default: ""
      t.string :card_number,     null: false, default: ""
      t.integer :expiration_month,     null: false
      t.integer :expiration_year,     null: false
      t.string :security_code,     null: false, default: ""
      t.string :profile,            default: ""
      t.date :birthday,             null: false, default: "1900/01/01"

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
