# frozen_string_literal: true

class CreateExams < ActiveRecord::Migration[7.1] # :nodoc:
  def change
    create_table :exams do |t|
      t.string :title
      t.float :test_score
      t.date :date_of_realization

      t.timestamps
    end
  end
end
