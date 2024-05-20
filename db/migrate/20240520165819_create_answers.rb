# frozen_string_literal: true

class CreateAnswers < ActiveRecord::Migration[7.1] # :nodoc:
  def change
    create_table :answers do |t|
      t.string :text
      t.boolean :is_correct, default: false
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
