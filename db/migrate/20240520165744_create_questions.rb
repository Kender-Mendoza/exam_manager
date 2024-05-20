# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[7.1] # :nodoc:
  def change
    create_table :questions do |t|
      t.string :type
      t.string :text
      t.float :score
      t.boolean :is_scorable
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
