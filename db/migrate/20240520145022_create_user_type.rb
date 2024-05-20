# frozen_string_literal: true

class CreateUserType < ActiveRecord::Migration[7.1] # :nodoc:
  def change
    create_table :user_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
