# frozen_string_literal: true

class Fields::Text::TextComponent < ViewComponent::Base # :nodoc:
  def initialize(form, field)
    @form = form
    @field = field
  end

  attr_reader :form, :field
end
