# frozen_string_literal: true

class Exam::Index::TableRow::TableRowComponent < ViewComponent::Base # :nodoc:
  attr_reader :exam, :current_user

  def initialize(table_row:, current_user:)
    @exam = table_row
    @current_user = current_user
  end

  def buttons
    return admin_user_buttons if current_user.admin?

    default_user_buttons
  end

  def admin_user_buttons
    content_tag :td, class: 'px-6 py-4' do
      render(Share::ShowButton::ShowButtonComponent.new(show_path: exam_path(exam))) +
        render(Share::EditButton::EditButtonComponent.new(edit_path: edit_exam_path(exam))) +
        render(Share::DeleteButton::DeleteButtonComponent.new(delete_path: exam_path(exam)))
    end
  end

  def default_user_buttons
    content_tag :td, class: 'px-6 py-4' do
      render Share::ShowButton::ShowButtonComponent.new(show_path: exam_path(exam))
    end
  end
end
