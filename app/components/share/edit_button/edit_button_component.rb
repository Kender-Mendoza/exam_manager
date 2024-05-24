# frozen_string_literal: true

class Share::EditButton::EditButtonComponent < ViewComponent::Base # :nodoc:
  attr_reader :edit_path

  def initialize(edit_path:)
    @edit_path = edit_path
  end
end
