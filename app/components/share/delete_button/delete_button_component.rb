# frozen_string_literal: true

class Share::DeleteButton::DeleteButtonComponent < ViewComponent::Base # :nodoc:
  attr_reader :delete_path

  def initialize(delete_path:)
    @delete_path = delete_path
  end
end
