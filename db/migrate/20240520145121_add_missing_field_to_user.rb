# frozen_string_literal: true

class AddMissingFieldToUser < ActiveRecord::Migration[7.1] # :nodoc:
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_reference :users, :user_type, foreign_key: true
  end
end
