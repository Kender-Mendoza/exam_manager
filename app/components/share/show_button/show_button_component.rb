# frozen_string_literal: true

class Share::ShowButton::ShowButtonComponent < ViewComponent::Base # :nodoc:
  attr_reader :show_path

  def initialize(show_path:)
    @show_path = show_path
  end
end
